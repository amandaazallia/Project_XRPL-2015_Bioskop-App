<?php
include 'koneksi.php';

if(isset($_POST)) {
	$sql = "update film set judul_film = '$_POST[judul_film]',
							waktu_tayang = '$_POST[waktu_tayang]',
							tempat_tayang = '$_POST[tempat_tayang]',
							trailer_film = '$_POST[trailer_film]',
							sinopsis_film = '$_POST[sinopsis_film]'
							WHERE id = '$_POST[id]' ";
	$dbh->exec($sql);
}	
header("location:crud.php");
?>