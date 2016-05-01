<form action="upload2.php"  method="POST"  enctype="multipart/form-data">
					Judul Film <br>
					<input type="text" name="judul_film" required/>
					</p><br>
					<p>
					Waktu Tayang <br>
					<input type="text" name="waktu_tayang" required/>
					</p><br>
					<p>
					Tempat Tayang<br>
					<textarea name="tempat_tayang" cols="30" required></textarea>
					</p><br>
					<p>
					<p>
					trailer Film<br>
					<td><input type="file" name="trailer_film" /></td>
					
					</p><br>
					<p>
					Sinopsis Film<br>
					<textarea name="sinopsis_film" cols="50" required></textarea>
					</p>
					<p>
					<button type="submit">Simpan </button>
					<button type="reset">Batal</button>
					</p><br>
</form>