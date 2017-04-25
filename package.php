#!/usr/bin/php
<?php

# configurable settings
#######################
$base_url = "https://night-ghost.github.io/MightyCore/";
$target_list = [ "avr" ];
$host_list = [ "linux" ];
$json_file = "web/package_MightyCore_index.json";
$destination_dir = "web/";

function s_var_dump($args){
    ob_start();
    var_dump(func_get_args());
    return ob_get_clean();
}

function s_print_r($args){
//error_log(wp_debug_backtrace_summary());
    return print_r(func_get_args(), 1);
}

function zip($directory, $version) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;
    
  $base_filename = $directory;
//  $base_filename = ~ s!/!_!g;

  $zipfile = "$base_filename-$version.zip";
    $zip_fn = $destination_dir.$zipfile;

  @unlink($zip_fn);
  system("zip -r $zip_fn $directory");
  //$sha256 = `sha256sum $zipfile`;
  $sha256 = hash('sha256',file_get_contents($zip_fn, LOCK_EX) ); 

//  $sha256 =~ s/ .*//s;
  $filestats = stat($zip_fn);

//  $zipfile =~ s@$destination_dir@@;

  return [ 'filename' => $zipfile, 'sha256' => $sha256, 'size' => $filestats['size'] ];
}



function tar_gz($directory, $version) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;

  $base_filename = $directory;
//  $base_filename =~ s!/!_!g;

  $tarname = "$base_filename-$version.tar.gz";

  $tarfile = $destination_dir. $tarname;

  @unlink($tarfile);
  system("tar zcf $tarfile --group=nobody --owner=nobody $directory");
  $sha256 = hash('sha256',file_get_contents($tarfile, LOCK_EX) ); //`sha256sum $tarfile`;
  
  $filestats = stat($tarfile);

  return [ 'filename' => $tarname, 'sha256' => $sha256, 'size' => $filestats['size'] ];
}

function read_json($filename) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;

  $data = json_decode(file_get_contents($filename, LOCK_EX));
  return $data;
}

function write_json($data,$filename) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;

  $enc = json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
  file_put_contents("$filename.tmp", $enc . "\n");
  
  
  @unlink("$filename.old");
  
  rename($filename, "$filename.old");
  rename("$filename.tmp", $filename);
}

function prepare_platform_pkg($old_platforms,$targets,$version) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;

  $new_records = [];

// print_r($targets);print_r($version); die();


  foreach($targets as $key => $target) {
//    print_r($target); print_r($key); die();

// print_r($old_platforms[$key]);  die();
    
    if(empty($old_platforms[$key]) ) {
      die("target $key not found in the previous version's list of targets");
    }
    $new_version = clone $old_platforms[$key];

    $old = $old_platforms[$key];
    
    $new_version->version = $version;
    $new_version->url = $base_url.$targets[$key]['filename'];
    $new_version->archiveFileName = $targets[$key]['filename'];
    $new_version->checksum = "SHA-256:".$targets[$key]['sha256'];
    $new_version->size = $targets[$key]['size'];

    
    for($i = 0; $i < count($new_version->toolsDependencies); $i++) {
      if($new_version->toolsDependencies[$i]->name == "stm32tools") {
        $new_version->toolsDependencies[$i]->version = $version;
        break;
      }
    }
//    
    //$new_records[] = $new_version;
    return $new_version;
  }

//    print_r($new_records); die();

  return [];
}

function repare_tools_pkg($old_version_number,$new_version_number,$tool_data,$tool_archives) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;

  $new_tools='';
  
  for($i = 0; $i < $tool_data; $i++) {
    if($tool_data[$i]->name == "stm32tools" && $tool_data[$i]->version == $old_version_number) {
      $new_tools = $tool_data[$i];
      break;
    }
  }
  if(empty($new_tools)) {
    die("unable to find version $old_version_number of tools stm32tools");
  }
  
  $new_tools->version = $new_version_number;
/*
  for($i = 0; $i < $new_tools->systems; $i++) {
    $tool_archive='';
    if($new_tools->{systems}[$i]{host} == "i686-mingw32") {
      $tool_archive = $tool_archives->win;
    } elsif($new_tools->systems[$i]->host =~ /^(x86_64|i386)-apple-darwin$/) {
      $tool_archive = $tool_archives->{macosx};
    } elsif($new_tools->systems[$i]host =~ /^i686-pc-linux-gnu$/) {
      $tool_archive = $tool_archives->linux;
    } elsif($new_tools->systems[$i]->host =~ /^x86_64-pc-linux-gnu$/) {
      $tool_archive = $tool_archives->{linux64};
    } else {
      die("unknown tool pkg host: ".$new_tools->{systems}[$i]{host});
    }
    
    $new_tools->{systems}[$i]{url} = $base_url.$tool_archive->{filename};
    $new_tools->{systems}[$i]{archiveFileName} = $tool_archive->{filename};
    $new_tools->{systems}[$i]{checksum} = "SHA-256:".$tool_archive->{sha256};
    $new_tools->{systems}[$i]{size} = $tool_archive->{size};
  }
*/
  return $new_tools;
}

function new_version($old_version) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;

  list($major,$minor,$release) = explode('.',$old_version);
  $release++;
  return "$major.$minor.$release";
}

function last_target_platforms($plats ,$version_number) {
    global $destination_dir, $json_file, $host_list, $target_list, $base_url;

  $target_platforms=[];
  
  foreach($plats as $platform ) {
    if($platform->version == $version_number /* && $platform->category == "STM32" */ ) {
      $target_platforms[$platform->architecture] = $platform;
    }
  }

  return $target_platforms;
}

  $testing_pkgs = read_json($json_file);
  
//  print_r($testing_pkgs); die();
  
//  $lastversion = $testing_pkgs->{packages}{platforms}[-1]{version};
    $pkgs = $testing_pkgs->packages[0];
//    die(print_r($pkgs));
    
    $plats = $pkgs->platforms;

//  die(print_r($plats));

    
  $lastversion = $plats[count($plats)-1]->version;
//  print_r($lastversion); die();
  
  $last_target_platforms = last_target_platforms($plats , $lastversion);
//  print_r($last_target_platforms); die();
  
  $version = new_version($lastversion);

//  print_r($version); die();


  $targets=[];
  foreach($target_list as $target) {
    $target_zip = zip($target, $version);
    $targets[$target] = $target_zip;
  }

//  print_r($targets); die();

  $tools=[];

/*  
  foreach($host_list as $host ) {
    $tool_zip='';
    if($host == "win") {
      $tool_zip = zip("tools/$host",$version);
    } else {
      $tool_zip = tar_gz("tools/$host",$version);
    }
    $tools[$host] = $tool_zip;
  }
*/

    $new_version = prepare_platform_pkg($last_target_platforms, $targets, $version);
//    print_r($new_version); die();

//  print_r($new_version); die();
    
    
  //$new_tools = prepare_tools_pkg($lastversion, $version, $testing_pkgs->packages->tools, $tools);

  $testing_pkgs->packages[0]->platforms[] = $new_version;
//  print_r($testing_pkgs); die();
//  $testing_pkgs->packages[0]->tools[] = $new_tools;
//die();
  write_json($testing_pkgs,$json_file);

