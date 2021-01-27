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
						<h5 class="card-header">Teachers List</h5>
						<div class="container">
							<div class="row justify-content-center">
								
								<div class="bs-example container mt-4" data-example-id="striped-table">
  <div class="container">
  <div class="row">
    <div class="col-12">
		<table class="table table-image">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Image</th>
		      <th scope="col">Details</th>
		      <th scope="col">Author</th>
		      <th scope="col">Words</th>
		      <th scope="col">Shares</th>
		    </tr>
		  </thead>
		  <tbody>

		  			<!---Mysql data Show code--->
					<?php
					$conn->exec("set names utf8");
					$select = $conn->prepare("SELECT * FROM tblteacher_info  ORDER BY id asc ");
					$select->execute();
					//loop
					$cnt=1;
					foreach ($select as $row) { ?>
					<tr>					  
				      <th scope="row"><?php echo htmlentities($cnt);?></th>
				      <td class="w-25" >
					      <img src="../../../admin/postimages/<?php echo $row['PostImage']; ?>" class="img-fluid img-thumbnail" alt="Sheep">
				      </td>
				      <td>
				      	<ul class="list-group list-group-flush">

						  <li class="list-group-item">Name&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $row['PostTitle']; ?></li>
						  <li class="list-group-item">Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $row['PostDetails']; ?></li>
						  <li class="list-group-item">Phone&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $row['mobile_number']; ?></li>
						  <li class="list-group-item">Email&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $row['email_add']; ?></li>						  
						</ul>
				      </td>
				      <td>Cristina</td>
				      <td>913</td>
				      <td>2.846</td>
				    </tr>				    
					<?php
					$cnt++;
					 } ?>
					<!---Mysql data select code end--->

		  </tbody>
		</table>   
    </div>
  </div>
</div>
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