<body style="background:black">
<!DOCTYPE HTML>

<html>
	<head><link rel="icon"type="image/png" href="img/favicon.png">			
		<title>In-Man</title>
			<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
			<link rel="stylesheet" type="text/css" href="laporan.css" />
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
					<div id="denah-bangku"><body style="background:11B.jpg">
								<div id="a1">A1
									<?php
									include 'koneksi.php';
									$sql = "select * from ticket order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									
									$sql = $dbh->prepare("select count(*) as cek where namaBangku = 'A1'");
									$sql->execute();
									$bangku = $sql->fetch(PDO::FETCH_ASSOC);
									if($bangku['cek']==0){
									echo "bangku tersedia";
									}
									else{
									echo"bangku tidak tersedia";
										
									}
									<?php 
								endforeach;
								?>
								</div>
								<div id="a2">A2</div>
								<div id="a3">A3</div>
								<div id="a4">A4</div>
								<div id="a5">A5</div>
								<div id="a6">B1</div>
								<div id="b1">B2</div>
								<div id="b2">B3</div>
								<div id="b3">B4</div>
								<div id="b4">B5</div>
								
								<div id="b5">C1</div>
								<div id="b6">C2</div>
								<div id="c1">C3</div>
								<div id="c2">C4</div>
								<div id="c3">C5</div>
								<div id="c4">D1</div>
								<div id="c5">D2</div>
								<div id="c6">D3</div>
								<div id="d1">D4</div>
								<div id="d2">D5</div>
								
								<div id="d3">E1</div>
								<div id="d4">E2</div>
								<div id="d5">E3</div>
								<div id="d6">E4</div>
								<div id="e1">E5</div>
								<div id="e2">F1</div>
								<div id="e3">F2</div>
								<div id="e4">F3</div>
								<div id="e5">F4</div>
								<div id="e6">F5</div>
								
								<div id="f1">G1</div>
								<div id="f2">G2</div>
								<div id="f3">G3</div>
								<div id="f4">G4</div>
								<div id="f5">G5</div>
								<div id="f6">H1</div>
								<div id="g1">H2</div>
								<div id="g2">H3</div>
								<div id="g3">H4</div>
								<div id="g4">H5</div>
								
								<div id="g5">I1</div>
								<div id="g6">I2</div>
								<div id="h1">I3</div>
								<div id="h2">I4</div>
								<div id="h3">I5</div>
								<div id="h4">J1</div>
								<div id="h5">J2</div>
								<div id="h6">J3</div>
								<div id="i1">J4</div>
								<div id="i2">J5</div>
							
								<div id="i3">K1</div>
								<div id="i4">K2</div>
								<div id="i5">K3</div>
								<div id="i6">K4</div>
								<div id="j1">K5</div>
								<div id="j2">L1</div>
								<div id="j3">L2</div>
								<div id="j4">L3</div>
								<div id="j5">L4</div>
								<div id="j6">L5</div>
								
								<div id="k1">M1</div>
								<div id="k2">M2</div>
								<div id="k3">M3</div>
								<div id="k4">M4</div>
								<div id="k5">M5</div>
								<div id="k6">N1</div>
								<div id="l1">N2</div>
								<div id="l2">N3</div>
								<div id="l3">N4</div>
								<div id="l4">N5</div>
								
								<div id="l5">O1</div>
								<div id="l6">O2</div>
								<div id="m1">O3</div>
								<div id="m2">O4</div>
								<div id="m3">O5</div>
								<div id="m4">P1</div>
								<div id="m5">P2</div>
								<div id="m6">P3</div>
								<div id="n1">P4</div>
								<div id="n2">P5</div>
							
								<div id="n3">Q1</div>
								<div id="n4">Q2</div>
								<div id="n5">Q3</div>
								<div id="n6">Q4</div>
								<div id="o1">Q5</div>
								<div id="o2">R1</div>
								<div id="o3">R2</div>
								<div id="o4">R3</div>
								<div id="o5">R4</div>
								<div id="o6">R5</div>
							</div>
				
				<center><div class="footer"><img src="footer7.png" ></div></center>