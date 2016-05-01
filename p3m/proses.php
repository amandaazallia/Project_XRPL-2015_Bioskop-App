<?php 
	include 'koneksi.php';
	$sql = "select *from admin";
	
	foreach($dbh->query($sql) as $data):
	?>
<?php
	if(isset($_POST['admin'])){
		$username = $_POST['username'];
		$pass = $_POST['password'];
		if ($username == "amanda" && $pass=="11111" || $username=="indah" && $pass=="sukses123")
		header("Location:crud.php");
		
		else if($username!="amanda" && $pass!="11111" || $username!="indah" && $pass!="sukses123")
			
			header('location: admin2.php');
				}
		?>
		<?php 
			endforeach;
				?>
				