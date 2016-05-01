<?php
$a = "mysql:dbname=ariefset_in_man;host=ariefsetya.com";
$user="ariefset_in_man";
$pass="bioskopxx1";

try{
	$dbh= new PDO($a, $user, $pass);
	} catch(PDOException $e) {
		echo "Koneksi ke database gagal: ".$e->getMessage();
	}
	?>