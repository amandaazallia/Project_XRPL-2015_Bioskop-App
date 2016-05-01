<body style="background:black">
<!DOCTYPE HTML>
<html>
	<body>
		<head><link rel="icon"type="image/png" href="img/favicon.png">			
			<title>Admin In-Man</title>
				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
			<link rel="stylesheet" type="text/css" href="admin.css" />
			<body>
				<div id="container">
					<div id="header">
						<div id="logo"><img src="logo2.png"></div>
						<div id="content-menu">
							<a class="link" href="home.php"><div class="menu-child">HOME</div></a>
							<a class="link" href="schedule.php"><div class="menu-child">SCHEDULE</div></a>
							<a class="link" href="show.php"><div class="menu-child">SHOW</div></a>
							<a class="link" href="about.php"><div class="menu-child">ABOUT</div></a>
							<a class="link" href="logout.php"><div class="menu-child">LOG Out</div></a>
						</div></div>
						<div class="judul">FORM ADMIN</div>
					<div class="data">
						<?php include 'koneksi.php';?>
						<style>
							<tbody tr:nth-child(2n+1)> td,tbody >tr:nth-child(2n+1) > th{
							background:color: #ededed;
					}
					table{
						width:70%;
						margin:	 auto;
						border-collapse:collapse;
						box-shadow:darkgrey 3px;
						color:white;
						}
						thead tr{
							background:#3bc2ff;
						}
						</style>
						<h1 class="data-adm" align="center">Tabel Data Admin</h1>
						
						<table border="1">
							<thead>
								<tr>								
									<th>No</th>
									<th>Judul Film</th>
									<th>Waktu Tayang</th>
									<th>Tempat Tayang</th>
									<th>Trailler</th>
									<th>Sinopsis Film</th>
									<th>Pilihan</th>
								</tr>
							</thead>
							
							<tbody>
							<?php
							$sql ="select *from film order by id";
							$no=1;
							foreach ($dbh->query($sql) as $data):
							?>
								<tr>
									<td><?php echo $data['id'];?></td>
									<td><?php echo $data['judul_film'];?></td>
									<td><?php echo $data['waktu_tayang'];?></td>
									<td><?php echo $data['tempat_tayang'];?></td>
									<td><?php echo $data['trailer_film'];?></td>
									<td><?php echo $data['sinopsis_film'];?></td>
									<td align="center">
										<a href="edit.php?id=<?php echo $data['id']?>">
									&nbsp;&nbsp;
										Edit</a><a href="hapus.php?id=<?php echo $data['id']?>"onclick="return confirm('anda yakin akan menghapus data?')">
										Hapus</a>
									</a>
									</td>
										
								</tr>
							<?php	
								endforeach;
								?>
							</tbody>
						</table>
					</div>
					
						
						<form action="upload2.php"  method="POST"  enctype="multipart/form-data">
						
											<div id="formcrud">
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
														<div><input class="isi-judul" type="text" name="judul_film" required/><div>
														<div><input class="isi-waktu" type="text" name="waktu_tayang" required/></div>
														<div><textarea name="tempat_tayang" cols="30" required></textarea></div>
														<div><input type="file" name="trailer_film" /></div>
														<div><textarea name="sinopsis_film" cols="50" required></textarea></div>
														<div><button type="submit">Simpan </button>
														<button type="reset">Batal</button><div>
													</ul>
												</div>
											</div>
										</div>
						</form>
							
						</div><center>
					<center><div class="footer"><img src="footer7.png" ></div></center>
		</head>
	</body>
</html>