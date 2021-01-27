
<div class="gr-b header" style="height: 125px;" >
				<div style="width: 57%">
					<img style="    height: 100px; margin: 14px;
					position:absolute;" src="<?php echo $dir ?>img/s-logo.png">
					<!---Mysql data select code--->
							<?php
							$conn->exec("set names utf8");
							$select = $conn->prepare("SELECT * FROM settings where id=1");
							$select->execute();
							//loop
							foreach ($select as $row) { ?>
					<h2><?php echo $row['name']; ?></h2>
					<p><?php echo $row['url']; ?></p>
					<?php } ?>
					<style>
						.social_i i:hover{
							color: blue;
						}
					</style>
				</div>
				<div class="social_i  " style="width: 20%; position: absolute;top:32px;right: 32px; font-size: 30px; ">
					<!---Mysql data select code--->
							<?php
							$conn->exec("set names utf8");
							$select = $conn->prepare("SELECT * FROM social where id=1");
							$select->execute();
							//loop
							foreach ($select as $row) { ?>
					<a class="text-light" href="<?php echo $row['f']; ?>"><i class="fab fa-facebook-square"></i></a>
					<a class="text-light"href="<?php echo $row['t']; ?>"><i class="fab fa-twitter-square"></i></a>
					<a class="text-light"href="<?php echo $row['l']; ?>"><i class="fab fa-instagram"></i></a>
					<?php } ?>
				</div>
			</div>