
<footer class="py-5" style="background-image: linear-gradient(to bottom, #0d4eb0, #005bb8, #0067be, #0073c3, #0d7fc8);">

					<!---Mysql data Show code--->
					<?php
					$conn->exec("set names utf8");
					$select = $conn->prepare("SELECT * FROM tblwetget where id =2 ");
					$select->execute();
					//loop
					foreach ($select as $row) { ?>
						<?php echo $row['WetGet']; ?> 
					
					<?php } ?>
					<!---Mysql data select code end--->
					

	      
        <!-- /.container -->
      </footer>