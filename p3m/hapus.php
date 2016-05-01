<?php
include 'koneksi.php';
if(isset($_GET['id'])){
	$dbh->exec("delete from film where id = '$_GET[id]'");
	
		}
		header("location:crud.php")
		?>