<?php
include 'koneksi.php';
if(isset($_GET['id'])) {
	$query = $dbh->query("select *from film WHERE id = '$_GET[id]'");
	$data = $query->fetch(PDO::FETCH_ASSOC);
}else {
	echo "id tidak tersedia!
	<a href='crud.php'>Kembali</a>";
		exit();
	}
	
	if ($data === false) {
		echo "Data tidak ditemukan!
	<a href='crud.php'>Kembali</a>";
		exit();
	}
	?>
	
<h1 align="center">Edit Data Admin</h1>
<fieldset style="width: 50%; margin: auto;">
	
	<form action="update.php" method="post">
		<div class="nama">
													<ul class="nama-y">
														<div>Judul Film</div><br>
														<div>Waktu Tayang</div><br>
														<div>Tempat Tayang</div><br>
														<div>Trailler Film</div><br>
														<div>Sinopsis Film</div><br>
													</ul>
													</div>
													<div class="isi">
													<ul>	
														<div><input class="isi-judul" type="text" name="judul_film" required value="<?php echo $data['judul_film']; ?>"/><div>
														<div><input class="isi-waktu" type="text" name="waktu_tayang" required value="<?php echo $data['waktu_tayang'];?>"/></div>
														<div><textarea name="tempat_tayang" cols="30" required value="<?php echo $data['tempat_tayang'];?>"/></textarea></div>
														<div><input type="file" name="trailer_film" value="<?php echo $data['trailer_film'];?>"/></div>
														<div><textarea name="sinopsis_film" cols="50" required value="<?php echo $data['sinopsis_film'];?>"></textarea></div>
														<div><input type="submit" name="simpan" value="simpan" onclick "retrun confrim('data telah tersimpan')" />
															<input type="reset" value="Reset" onclick="return confirm('hapus data yang telah diinput?')"/></div>
													</ul>
												</div>
											</div>
	</form>
</fieldset>
