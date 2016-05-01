
	<form action="" method="post">
					<p>Nama pengguna</p>
					<input type="text" name="enama"/>
					<p>Kata sandi</p>
					<input type="password" name="epass"/>
					<input type="submit" name="login" value="masuk" class="button1"/>
				</form>
				<?php
					if(isset($_POST["login"]))
					{
						$username = $_POST["username"];
						$pass = $_POST["password"];
						$sql = mysql_query("select *from admin where username='".$username."' and password='".$pass."'");
						$num = mysql_num_rows($sql);
						if($num == 1)
						{
							echo "<script>document.location='index.php?modul=admin&menu=biodatapasien';</script>";
						}
						else
						{
							echo "<script>alert('username atau password tidak valid');</script>";
							header("location:login.php");
						}
						
					}
				?>