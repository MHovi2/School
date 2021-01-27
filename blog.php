<?php
	require_once ("database/conn.php");

?>
<?php $dir = ""; ?>
<!DOCTYPE html>
<html lang="en">

<?php require_once("includes/head.php"); ?>
	<body class="" style="font-family: 'Mukti', sans-serif;">
		<div class="container">
			<!---->
			<?php require_once 'includes/header.php'; ?>
			
			<!---->
			<?php require_once 'includes/nav.php'; ?>
			<!---->
			
			<!---->
		</div>
		<!-- Page Content -->
		<div class="container">
			<div class="row">
				<!-- Blog Entries Column -->
				<div class="col-md-9">
					
					
					
					
					<div class="card my-4">
						<!---Mysql data select code--->
					<?php
					$conn->exec("set names utf8");
					$select = $conn->prepare("SELECT * FROM tblposts where CategoryId =5 ORDER BY id DESC LIMIT 0,5");
					$select->execute();
					//loop
					foreach ($select as $row) { ?>
					<img class="card-img " src="../admin/postimages/<?php echo $row['PostImage']; ?>" alt="Card image cap">
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
					
				
					
					<!-- Pagination -->
					<ul class="pagination justify-content-center mb-4">
						<li class="page-item">
							<a class="page-link" href="#">&larr; পুরোনো</a>
						</li>
						<li class="page-item disabled">
							<a class="page-link" href="#">নতুন &rarr;</a>
						</li>
					</ul>
				</div>
				<!-- Sidebar Widgets Column -->
				<?php require_once'includes/sidebar.php'; ?>
			</div>
			<!-- /.row -->
			<!-- Footer -->
			<?php require_once'includes/footer.php'; ?>
		</div>
		<!-- /.container -->
		
		<!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	</body>
</html>