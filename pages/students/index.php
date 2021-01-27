<?php require_once("../../database/conn.php") ?>
<?php $dir = "../../"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once'../../includes/head.php'; ?>
</head>

<body class="grey lighten-3" style="font-family: 'Titillium Web', 'Mukti';">
    <div class="container">

        <?php require_once'../../includes/header.php'; ?>
        <?php require_once'../../includes/nav.php' ?>
    </div>
    <!-- php -->


    <style type="text/css">
        .list-group-item {
            border: 0 !important;
            padding: 10px !important;
        }

        .img-thumbnail {
            height: 175px !important;
        }
    </style>

    <!-- php -->
    <div class="container">
        <div class="row">
            <div class="col-md-9">



                <div class="card my-4">
                    <h5 class="card-header">শিক্ষার্থী ইনফরমেশনঃ</h5>
                    <div class="container">
                        <div class="row justify-content-center">



                            <div class="bs-example container mt-4" data-example-id="striped-table">

                                <div class="row mb-4">
                                    <div class="col-12">


                                    <?php

                                    if(isset($_POST["boardRoll"])){

                                    $roll = $_POST['boardRoll'];
                                    $conn->exec("set names utf8");
                                    $select = $conn->prepare("SELECT * FROM tbl_student_info where roll = $roll");
                                    $select->execute();
                                    $rowCount[] =  $select;


                                    //loop
                                    foreach ($select as $row){ 

                                    ?>

                                            

                                    <?php  





                                    echo $row['first_name'];

                                    // Echo Your Data Here With Table





                                    
                                    ?>




                                    <?php }
                                        } ?>





                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        <div class="org-des mb-3 text-center text-primary">
                                            <h4>নতুনভাবে তথ্য দেখুন</h4>
                                        </div>
                                        <!-- Another variation with a button -->
                                        <form method="POST" action="<?php echo $dir ?>pages/students/index.php">
                                        <div class="input-group mb-4 px-5">

                                        
                                            <input type="text" class="form-control" placeholder="Board Roll" name="boardRoll">
                                            <div class="input-group-append">
                                                <button class="btn btn-danger" type="submit">
                                                    Search
                                                </button>
                                            </div>

                                            
                                        </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>



            <!-- Sidebar Widgets Column -->
            <?php  require_once '../../includes/sidebar.php'; ?>
            <!-- Sidebar Widgets Column -->
        </div>
        <!-- /.row -->
        <!-- Footer -->
        <?php require_once("../../includes/footer.php"); ?>
        <!-- Footer -->
    </div>
</body>

</html>