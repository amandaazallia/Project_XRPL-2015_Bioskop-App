<body style="background:black">
<!DOCTYPE HTML>
	<html>
		
			<head><link rel="icon"type="image/png" href="img/favicon.png">
				<title>In-Man</title>
			<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
			<link rel="stylesheet" type="text/css" href="about.css" />
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
						<div class="layout1">
							
							<div class="layout3">
								<div class="judul2">APPLICATION</div>
								<div class="isi-about-app">
								<?php
									include 'koneksi.php';
									$sql = "select * from about_aplikasi order by id";
									foreach($dbh->query($sql) as $data) :
									?>
									<ul>
										<div><?php echo $data['isi'];?></div>
									</ul>
									<?php 
								endforeach;
								?>
								</div>
							</div>
							<div class="layout4">
								<div class="judul3">PROFIL</div>
								<div class="isi-about-dev">
										<div id="font"></div>
										<h6>Amandaazallia</h6><script language="javascript">  
											function buka_popup()
												{     window.open('https://facebook.com/Amandaazallia', '', 'width=640, height=480, menubar=yes, location=yes,scrollbars=yes, resizeable=yes, status=yes, copyhistory=no, toolbar=no');   } 
										 </script> 
										<body onload="buka_popup();"> <a href="javascript: buka_popup();"><div class="sosmed-child-fb" id="font"><img src="facebook.png" width="35" height="35" ></div></a>
										
										
										
										<script language="javascript"> 
											function buka_popup4()  
												{     window.open('https://twitter.com/amandaazll', '', 'width=640, height=480, menubar=yes, location=yes,scrollbars=yes, resizeable=yes, status=yes, copyhistory=no, toolbar=no');   } 
										</script> 
										<body onload="buka_popup4();"> <a href="javascript: buka_popup4();"><div class="sosmed-child-tw"><img src="twitter.png" width="40" height="40"></div></a>
										<script language="javascript">  
											function buka_popup1()
												{     window.open('https://facebook.com/indah.nuralifah.7', '', 'width=640, height=480, menubar=yes, location=yes,scrollbars=yes, resizeable=yes, status=yes, copyhistory=no, toolbar=no');   } 
										 </script> 
										<body onload="buka_popup1();"><h6>Indah Nur Alifah</h6> <a href="javascript: buka_popup1();"><div class="sosmed-child-fb"><img src="facebook.png" width="35" height="35"></div></a>
										
										<script language="javascript"> 
											function buka_popup5()  
												{     window.open('https://twitter.com/indahnralfh', '', 'width=640, height=480, menubar=yes, location=yes,scrollbars=yes, resizeable=yes, status=yes, copyhistory=no, toolbar=no');   } 
										</script> 
										<body onload="buka_popup5();"> <a href="javascript: buka_popup5();"><div class="sosmed-child-tw"><img src="twitter.png" width="40" height="40"></div></a>
		
									
								</div>
							</div>
							<div class="layout5">
								<div class="judul5">Contact Us</div>
								
								<div class="isi-contactus"><div class="dev">Pesan telah dikirim. Ketikkan pesan selanjutnya</div>
									<form action="uploadcontact.php"  method="POST"  enctype="multipart/form-data">
										<center><br><br><input class="nama" type="text" name="nama" PlaceHolder="Nama Lengkap" required/><br><p>
										<input class="email" type="text" name="email"  PlaceHolder="Email" required/><br><p>
										<textarea class="komentar" name="komentar" cols="30" PlaceHolder="Komentar"  required/></textarea><br>
										<button class="button" type="submit">Simpan </button>
										<button type="reset">Batal</button><div></center>
									</form>
								</div>
							</div>
						</div>
					
					<center><div class="footer"><img src="footer7.png" ></div></center>
				</div>
				
			</body>
	</html>