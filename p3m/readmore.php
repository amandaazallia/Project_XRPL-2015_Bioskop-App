<body style="background:black">
<!DOCTYPE HTML>
	<html>	
		<head><link rel="icon"type="image/png" href="img/favicon.png">			
		<title>In-Man</title>
			<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
			<link rel="stylesheet" type="text/css" href="show.css" />
			<body>
				<div id="container">
					<div id="header">
						<div id="logo"><img src="logo2.png"></div>
						<div id="content-menu">
							<a class="link" href="home.php"><div class="menu-child">HOME</div></a>
							<a class="link" href="schedule.php"><div class="menu-child">SCHEDULE</div></a>
							<a class="link" href="show.php"><div class="menu-child">SHOW</div></a>
							<a class="link" href="about.php"><div class="menu-child">ABOUT</div></a>
							<a class="link" href="about.php"><div class="menu-child">LOG IN</div></a>
						</div></div>
					
					<div id="readmore">
								<?php
									include 'koneksi.php';
									$id= $_GET['id'];
									$sql = "select * from film where id = $id";

									foreach($dbh->query($sql) as $data) :
									?>
						<div class="judul-readmore"><?php echo $data['judul_film'];?></div>
						<div class="isi-readmore"><?php echo $data['sinopsis_film'];?></div>
						<?php	
							endforeach;
							?>
					</div>
					<center><div class="footer"><img src="footer7.png" ></div></center>
				</div>
			</body>
			
	</html>