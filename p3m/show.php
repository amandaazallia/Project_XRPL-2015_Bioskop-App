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
						<div id="trailer">
							<div class="judul-trailer">TRAILLER FILM</div>							
							<br><center><iframe width="900" height="550" src="https://wwww.youtube.com/embed/3v1wowsDp2A" frameborder="0" allowfullscreen></iframe></center>								
						</div>
						<div id="sinopsis">
							
							<div class="judul-sinopsis">S I N O P S I S</div><br>
								<div id="content-sinopsis">
									<?php
										include 'koneksi.php';
										$sql = "select * from film order by id";
										foreach($dbh->query($sql) as $data) :
										?>
										<div class="content_sinopsis">
													<div class="jdl"><?php echo $data['judul_film'];?></div>
													<div class="isi"><p><?php echo substr ($data['sinopsis_film'], 0, 200); echo "....";?></p>
													<p><a class="rm" href="readmore.php?id=<?php echo $data['id'];?>">Lanjutkan Membaca...</p></div></a>
										</div>
									<?php 
										endforeach;
											?>
								</div>		
								<center><div class="footer"><img src="footer7.png" ></div></center>
						</div>		
						
			</body>
		</head>
	</html>