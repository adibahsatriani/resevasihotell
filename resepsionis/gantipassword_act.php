<?php 
include '../koneksi.php';
session_start();
$id = $_SESSION['id'];
$password = md5($_POST['password']);

mysqli_query($koneksi, "UPDATE resepsionis SET resepsionis_password='$password' WHERE resepsionis_id='$id'")or die(mysqli_errno());

header("location:gantipassword.php?alert=sukses");