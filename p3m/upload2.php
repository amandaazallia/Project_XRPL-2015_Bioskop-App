 <?php
include "koneksi.php";

$judul_film = $_POST['judul_film'];
$waktu_tayang = $_POST['waktu_tayang'];
$tempat_tayang = $_POST['tempat_tayang'];

$dir = "film/";
$trailer_film = $dir.basename($_FILES['trailer_film']['name']);
$temp_file	= $_FILES['trailer_film']['tmp_name'];

$sinopsis_film= $_POST['sinopsis_film'];

$sql= "INSERT INTO film values('','$judul_film','$waktu_tayang','$tempat_tayang','$trailer_film','$sinopsis_film')";
$dbh->exec($sql);
	?>