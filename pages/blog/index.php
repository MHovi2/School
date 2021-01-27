<?php require_once("../../database/conn.php") ?>
<?php $dir = "../../"; ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<?php require_once'../../includes/head.php'; ?>
	</head>
	<body class="grey lighten-3"style="font-family: 'Titillium Web', 'Mukti';">
		<div class="container">
			
			<?php require_once'../../includes/header.php'; ?>
			<?php require_once'../../includes/nav.php' ?>
		</div>		

		<style type="text/css">
			.list-group-item {
				border: 0 !important;
				padding: 10px !important;
			}
			.img-thumbnail{
				height: 175px !important;
			}

		</style>



		<!-- php -->
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div class="card my-4">
						<h5 class="card-header">বিস্তারিত 
তথ্য</h5>
						<div class="container">
							<div class="row justify-content-center">
								<div class="card">
						<!---Mysql data select code--->
					<?php
					//Get Edit Id
					$id = $_GET['pid'];  									
					$conn->exec("set names utf8");
					$select = $conn->prepare("SELECT * FROM tblposts where id = '$id'");
					$select->execute();
					//loop
					foreach ($select as $row) { ?>
					<img class="card-img " src="../../../admin/postimages/<?php echo $row['PostImage']; ?>" alt="Card image cap">
						<div class="card-body" style="color:#067dbd;">
							<h2 class="card-title"style="color:#113676;"><?php echo $row['PostTitle']; ?></h2>
							<p class="card-text text-justify lead"><?php echo $row['PostDetails']; ?></p>
							<a href="#" class="btn btn-primary">আরো পড়ুন &rarr;</a>
						</div>
						<div class="card-footer text-muted">
							<?php echo $row['PostingDate']; ?> by
							<a href="#">Ovi</a>
						</div>
					
					
					<?php } ?>
					<!---Mysql data select code end--->
						
					</div>
			
							</div>
						</div>
						
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