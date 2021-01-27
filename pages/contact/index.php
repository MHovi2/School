<?php require_once("../../database/conn.php") ?>
<?php $dir = "../../"; ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<?php require_once'../../includes/head.php'; ?>
	</head>
	<body class="grey lighten-3"style="font-family: 'Mukti', sans-serif;">
		<div class="container">
			
			<?php require_once'../../includes/header.php'; ?>
			<?php require_once'../../includes/nav.php' ?>
		</div>
		<!-- php -->
		<?php
		
		if(isset($_POST["submit"])){
		$name = $_POST['name'];
		$email = $_POST['email'];
		$subj = $_POST['subject'];
		$msg = $_POST['msg'];
		$insert = "INSERT INTO tblcomments (name,email,subj,comment) VALUES ('$name', '$email', '$subj', '$msg')";
		$conn->exec($insert);
		
		} ?>
		<!-- php -->
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div class="card my-4">
						<h5 class="card-header">Contact Us</h5>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-md-8 mt-5 bg-light rounded mb-4">
									
									<h1 class="text-center font-weight-bold text-primary">Send Your Message</h1>
									<hr class="bg-light">
									<h5 class="text-center text-success"></h5>
									<form action="" method="post" id="form-box" class="p-2">
										<div class="form-group input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i class="fas fa-user"></i></span>
											</div>
											<input type="text" name="name" class="form-control" placeholder="Enter your name" required>
										</div>
										<div class="form-group input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i class="fas fa-envelope"></i></span>
											</div>
											<input type="email" name="email" class="form-control" placeholder="Enter your email" required>
										</div>
										<div class="form-group input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i class="fas fa-at"></i></span>
											</div>
											<input type="text" name="subject" class="form-control" placeholder="Enter subject" required>
										</div>
										<div class="form-group input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i class="fas fa-comment-alt"></i></span>
											</div>
											<textarea name="msg" id="msg" class="form-control" placeholder="Write your message" cols="30" rows="4" required></textarea>
										</div>
										<div class="form-group">
											<input type="submit" name="submit" id="submit" class="btn btn-primary btn-block" value="Send">
										</div>
									</form>
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