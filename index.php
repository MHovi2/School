<?php
	require_once ("database/conn.php");

?>
    <?php $dir = ""; ?>
        <!DOCTYPE html>
        <html lang="en">

        <?php require_once("includes/head.php"); ?>

            <body class="" style="font-family: 'Titillium Web', 'Mukti';">
                <div class="container">
                    <!---->
                    <?php require_once 'includes/header.php'; ?>

                        <!---->
                        <?php require_once 'includes/nav.php'; ?>
                            <!---->
                            <div class="ism-slider" data-transition_type="fade" data-play_type="once" data-interval="3000" data-image_fx="zoomrotate" data-radios="false" id="my-slider">
                                <ol>

                                    <!---Mysql data Show code--->
                                    <?php
                					$conn->exec("set names utf8");
                					$select = $conn->prepare("SELECT * FROM tblposts where CategoryId =1 ORDER BY id DESC LIMIT 0,3");
                					$select->execute();
                					//loop
                					foreach ($select as $row) { ?>
                                        <li>
                                            <img src="../admin/postimages/<?php echo $row['PostImage']; ?>">
                                            <div class="ism-caption ism-caption-0">
                                                <?php echo $row['PostTitle']; ?>
                                            </div>
                                        </li>
                                        <?php } ?>
                                            <!---Mysql data select code end--->

                                </ol>
                            </div>
                            <!---->
                </div>
                <!-- Page Content -->
                <div class="container">
                    <div class="row">
                        <!-- Blog Entries Column -->
                        <div class="col-md-9">

                            <div class="card my-4">
                                <a href="https://www.youtube.com/watch?v=bxWRglJFQNc"><img class="card-img " src="img/pm.jpg" alt="Card image cap"></a>
                                <div class="card-footer text-muted" style="background: rgba(0,0,0,0.03);">
								    <h5 class="text-dark" style="text-align: center; "><b><marquee direction="left" scrollamount="4" onmouseover="this.stop()" onmouseout="this.start()">
											করোনা ঝুঁকি যাচাই করতে ৩৩৩ বা *৩৩৩২# ডায়াল করুন। ভিজিট করুন <a href="http://corona.gov.bd/" target="_blank" style="color: blue;" title=" corona.gov.bd "> corona.gov.bd </a> অথবা ডাউনলোড করুন <a href="https://play.google.com/store/apps/details?id=com.bs.ccc" target="_blank" style="color: blue;" title=" CoronaBD "> CoronaBD </a> অ্যাপ। ৩৩৩ নম্বরে অপ্রয়োজনে কল করা থেকে বিরত থাকুন।
										</marquee></b></h5>
								</div>
                            </div>

                            <div class="card my-4">
                                <h5 class="card-header">খবর</h5>
                                <div class="card-body">
                                    <marquee   onmouseover="this.stop();" onmouseout="this.start();">
                                        <!---Mysql data select code--->
                                        <?php
            							$conn->exec("set names utf8");
            							$select = $conn->prepare("SELECT * FROM tblposts where CategoryId =2 ORDER BY id DESC LIMIT 0,5");
            							$select->execute();
            							//loop
            							foreach ($select as $row) { ?>
                                            <a href="<?php echo $row['PostDetails']; ?>">&#9733;&nbsp;    <?php echo $row['PostTitle']; ?> &nbsp; &nbsp; &nbsp; &nbsp;  </a>
                                            <?php } ?>
                                                <!---Mysql data select code end--->
                                    </marquee>
                                </div>
                            </div>

                            <div class="card my-4">
                                <h5 class="card-header">নোটিসবোর্ড</h5>
                                <div class="card-body">
                                    <!---Mysql data select code--->
                                    <?php
        							$conn->exec("set names utf8");
        							$select = $conn->prepare("SELECT * FROM tblposts where CategoryId =3 ORDER BY id DESC LIMIT 0,5");
        							$select->execute();
        							//loop
        							foreach ($select as $row) { ?>

                                        <a href="<?php echo $row['PostDetails']; ?>">&#10066;&nbsp;  <?php echo $row['PostTitle']; ?></a>
                                        <hr>
                                        <?php } ?>
                                            <!---Mysql data select code end--->

                                </div>
                            </div>

                            <div class="card my-4">
                                <h5 class="card-header">আমাদের দৃষ্টিঃ-</h5>
                                <div class="card-body"> 
                                        
                                        <h4 class="text-body text-center"><b>“ বিশ্ব বাজারের জন্য শ্রেষ্ঠ মানের আউটপুট। ”</b></h4>    
                                        
                                </div>
                            </div>

                            <div class="card my-4">
                                <h5 class="card-header">আমাদের লক্ষ্যঃ-</h5>
                                <div class="card-body">
                                    <p class="card-text text-center lead text-body">
                                        “ বাংলাদেশের প্রযুক্তিগত এবং আর্থ সামাজিক উন্নয়নে অবদান রাখার জন্য ব্যাপকভাবে শিল্পের সঙ্গে মান সম্মত শিক্ষা ও প্রশিক্ষণ, সঠিক নির্দেশনা এবং পরামর্শ, সহযোগিতা প্রদানের মাধ্যমে বগুড়া পলিটেকনিক ইন্সটিটিউটকে স্বনির্ভরশীল প্রমাণ করা। ”
                                    </p> 
                                        
                                        <h4 class="text-success text-center"><b>মূল্যবোধঃ- নেতৃত্ব, ইনোভেশন, ত্যাগ, এক্সেলেন্স এবং প্রতিষ্ঠা।</b></h4>    
                                        
                                </div>
                            </div>

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
                                        <h2 class="card-title text-primary"><?php echo $row['PostTitle']; ?></h2>
                                        <p class="card-text text-justify lead text-body">
                                            <?php echo $row['PostDetails']; ?>
                                        </p>
                                        <a href="pages/blog/?pid=<?php echo $row['id']; ?>" class="btn btn-primary">আরো পড়ুন &rarr;</a>
                                    </div>
                                    <div class="card-footer text-muted">
                                        <?php echo $row['PostingDate']; ?> by
                                            <a href="#">Ovi</a>
                                    </div>

                                    <?php } ?>
                                        <!---Mysql data select code end--->

                            </div>

                            <div class="row my-4">
                                <div class="col">
                                    <h5 class="card-header">পরীক্ষা সংক্রান্ত</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img" style="height: 108px; width: 108px;" src="img/exam.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm  pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>

                                <div class="col">
                                    <h5 class="card-header">পরীক্ষক</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img"  src="img/teacher1.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm  pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>
                            </div>

                             <div class="row my-4">
                                <div class="col">
                                    <h5 class="card-header">অন্যান্য ই-সেবা</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img" style="height: 108px; width: 108px;" src="img/e-shaba1.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm  pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>

                                <div class="col">
                                    <h5 class="card-header">ফলাফল</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img" style="height: 108px; width: 108px;" src="img/result.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm  pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>
                            </div>

                             <div class="row my-4">
                                <div class="col">
                                    <h5 class="card-header">বিদ্যালয় কর্ণার</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img" style="height: 108px; width: 135px;" src="img/school.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm  pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>

                                <div class="col">
                                    <h5 class="card-header">তথ্য সেবা</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img" style="height: 108px; width: 108px;" src="img/e-saba.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>
                            </div>


                             <div class="row my-4">
                                <div class="col">
                                    <h5 class="card-header">রোভার স্কাউট দল</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img" style="height: 108px; width: 108px;" src="img/scout.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm  pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>

                                <div class="col">
                                    <h5 class="card-header">যুব রেড ক্রিসেন্ট সোসাইটি</h5>
                                    <div class="card-body">
                                        <!-------->
                                        <div class="row">
                                            <div class="col-sm">
                                                <img class="card-img" style="height: 108px; width: 108px;" src="img/red.png" alt="Card image cap">
                                            </div>
                                            <div class="col-sm  pl-0">
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Principal</a>
                                                <br>
                                                <i class="fas fa-caret-right text-primary pr-2" ></i><a href="">  Chairman</a>
                                                <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                               <br>
                                               <i class="fas fa-caret-right text-primary pr-2" ></i><a href=""> Chairman</a>
                                            </div>
                                        </div>
                                        <!-------->
                                    </div>
                                </div>
                            </div>                           
                            
                           

                            <!---Mysql data select code--->
                            <?php
							$conn->exec("set names utf8");
							$select = $conn->prepare("SELECT * FROM tblposts where CategoryId =7 ORDER BY id DESC LIMIT 0,1");
							$select->execute();
							//loop
							foreach ($select as $row) { ?>
                                <div class="card my-4">
                                    <h5 class="card-header"><?php echo $row['PostTitle']; ?></h5>
                                    <div class="card-body py-0 px-3">
                                        <div class="row">
                                            <iframe width="100%" height="560px" src="https://www.youtube.com/embed/<?php echo $row['PostDetails']; ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                                    <!---Mysql data select code end--->

                                    <div class="card my-4">
                                        <h5 class="card-header">অন্যান্য</h5>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <ul class="list-unstyled mb-0">
                                                        <li>
                                                            <a href="#">&#10066;&nbsp;খেলাধূলা</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">&#10066;&nbsp;রোভার স্কাউট</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">&#10066;&nbsp;সাংস্কৃতিক অনুষ্ঠান</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-lg-6">
                                                    <ul class="list-unstyled mb-0">
                                                        <li>
                                                            <a href="#">&#10066;&nbsp;বিজ্ঞান গবেষণাগার</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">&#10066;&nbsp;লাইব্রেরি</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">&#10066;&nbsp;স্বাস্থ্য কেন্দ্র</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
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