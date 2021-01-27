<?php require_once("../../database/conn.php") ?>
<?php $dir = "../../"; ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<?php require_once'../../includes/head.php'; ?>
	</head>
	<body class="grey lighten-3"style="font-family: 'Titillium Web', 'Mukti'">
		<div class="container">
			
			<?php require_once'../../includes/header.php'; ?>
			<?php require_once'../../includes/nav.php' ?>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					
					<div class="card my-4">
						<h5 class="card-header">ইতিহাস</h5>
						
						<!---Mysql data select code--->
						<?php
						$conn->exec("set names utf8");
						$select = $conn->prepare("SELECT * FROM tblposts where CategoryId =6 ORDER BY id DESC LIMIT 0,2");
						$select->execute();
						//loop
						foreach ($select as $row) { ?>
						<div class="card-body">
							<center><h3 class="display-6 font-weight-bold"><?php echo $row['PostTitle']; ?></h3></center>
							<p class="card-text text-justify lead" style="font-size: 16px; "><?php echo $row['PostDetails']; ?></p>
						</div>
						
						<?php } ?>
						<!---Mysql data select code end--->
						<!---Mysql data select code--->
						<?php
						$conn->exec("set names utf8");
						$select = $conn->prepare("SELECT * FROM tblposts where CategoryId =1 ORDER BY id DESC LIMIT 0,1");
						$select->execute();
						//loop
						foreach ($select as $row) { ?>
						<div class="card-footer text-muted">
							<?php echo $row['PostingDate']; ?> by
							<a href="#">Ovi</a>
						</div>
						<?php } ?>
						<!---Mysql data select code end--->
						
					</div>
				</div>
				<!-- Sidebar Widgets Column -->
				<?php require_once'../../includes/sidebar.php'; ?>
				<!-- Sidebar Widgets Column -->
			</div>
			<!-- /.row -->
			<!-- Footer -->
			<?php require_once("../../includes/footer.php"); ?>
			<!-- Footer -->
		</div>
	</body>
</html>