 <?php
include "koneksi.php";

ob_start();

$nama = $_POST['nama'];
$email = $_POST['email'];
$komentar = $_POST['komentar'];


$sql= "INSERT INTO user values('','$nama,'$email','$komentar')";
$dbh->exec($sql);

	header("location:about2.php");
	?>