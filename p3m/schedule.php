<body style="background:black">
<!DOCTYPE HTML>

<html>
	<head><link rel="icon"type="image/png" href="img/favicon.png">			
		<title>In-Man</title>
			<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
			<link rel="stylesheet" type="text/css" href="schedule.css" />
			<body>
				<div id="container">
					<div id="header">
						<div id="logo"><img src="logo2.png"></div>
						<div id="content-menu">
							<a class="link" href="home.php"><div class="menu-child">HOME</div></a>
							<a class="link" href="schedule.php"><div class="menu-child">SCHEDULE</div></a>
							<a class="link" href="show.php"><div class="menu-child">SHOW</div></a>
							<a class="link" href="about.php"><div class="menu-child">ABOUT</div></a>
							<a class="link" href="admin.php"><div class="menu-child">LOG IN</div></a>
						</div>
						<div id="waktu">Hari Ini </div>
						<div class="tiga"></div>
					<div id="jd1">
					<div class="wkt">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd1 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal"><?php echo $data['waktu'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>ARION</center></div>
						<div class="jadwal">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd1 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						
					</div>
					<div id="jd2">
						<div class="wkt2">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd2 order by id";
									foreach($dbh->query($sql) as $data) :
							?>
									<ul>
										<div class="isi_jadwal2"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>ARTHA GADING</center></div>
						<div class="jadwal2">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd2 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal2"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd3">
						<div class="wkt3">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd3 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal3"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>BLOK M PLAZA</center></div>
						<div class="jadwal3">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd3 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal3"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd4">
							<div class="wkt4">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd3 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal3"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>CIPINANG</center></div>
						<div class="jadwal4">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd4 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal4"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>					
					</div>
					<div id="jd5">
						<div class="wkt5">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd5 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal5"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>KALIBATA</center></div>
						<div class="jadwal5">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd5 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal5"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd6">
						<div class="wkt6">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd6 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal5"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>LIPPO PLAZA</center></div>
						<div class="jadwal6">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd6 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal6"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd7">
						<div class="wkt7">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd7 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal7"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>TAMINI</center></div>
						<div class="jadwal7">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd7 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal7"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd8">
						<div class="wkt8">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd8 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal8"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>PLAZA INDONESIA</center></div>
						<div class="jadwal8">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd8 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal8"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd9">
						<div class="wkt9">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd9 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal9"><?php echo $data['waktu'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>PONDOK INDAH</center></div>
						<div class="jadwal9">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd9 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal9"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd10">
						<div class="wkt10">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd10 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal7"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>PONDOK GEDE</center></div>
						<div class="jadwal10">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd10 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal10"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
						</div>
					</div>
					<div id="jd11">
							<div class="wkt11">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd11 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal11"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>PEJATEN VILLAGE</center></div>
						<div class="jadwal11">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd11 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal7"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="jd12">
						<div class="wkt12">
						<?php
									include 'koneksi.php';
									$sql = "select * from jd12 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div class="isi_jadwal12"><?php echo $data['waktu'];?>
										</div>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
						<div class="tempat"><center>TIM</center></div>
						<div class="jadwal12">
							<?php
									include 'koneksi.php';
									$sql = "select * from jd12 order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<li class="isi_jadwal12"><?php echo $data['judul'];?>
										</li>
									</ul>
									<?php 
								endforeach;
								?>
								
						</div>
					</div>
					<div id="table-report">
						<div class="judul-report"><a class="link" href="laporan.php">Informasi Penayangan Film</a></div>
						
						</div>
					</div><center>
					<center><div class="footer"><img src="footer7.png" ></div></center>
				</div>
			</body>
		</head>
	</html>