<div class="col-md-3">
    <!-- Search Widget -->
    <!---Mysql data select code--->
    <?php
                    $conn->exec("set names utf8");
                    $select = $conn->prepare("SELECT * FROM tblposts where CategoryId =4 ORDER BY id DESC LIMIT 0,5");
                    $select->execute();
                    //loop
                    foreach ($select as $row) { ?>
        <div class="card my-4" style="color:#067dbd;">
            <h5 class="card-header"><?php echo $row['PostTitle']; ?></h5>
            <img class="card-img" src="<?php echo $dir ?>../admin/postimages/<?php echo $row['PostImage']; ?>" alt="Card image cap">
            <div class="card-body">
                <p class="card-text text-justify text-body">
                    <?php echo $row['PostDetails']; ?>

                </p>
                <a href="<?php echo $dir ?>pages/blog/?pid=<?php echo $row['id']; ?>" class="btn btn-primary">আরো পড়ুন &rarr;</a>

            </div>
        </div>

        <?php } ?>

            <div class="card my-4" style="color:#067dbd;">
                <h5 class="card-header">শিক্ষার্থীদের তথ্য</h5>

                <div class="card-body" style="border-width: 1px; border-style: solid; border-top: 0px;">
                    <!-- Another variation with a button -->



                    <form method="POST" action="<?php echo $dir ?>pages/students/index.php">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Board Roll" id="boardRoll" name="boardRoll" required>
                        <div class="input-group-append">
                            <button class="btn btn-danger" type="submit" name="submitroll">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                    </form>
                    
                </div>
            </div>

            <div class="card my-4" style="color:#067dbd;">
                <h5 class="card-header">গ্যালারি</h5>

                <div class="card-body p-0" style="border-width: 1px; border-style: solid; border-top: 0px;">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="0" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="1" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="2" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="3" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="4" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="5" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="6" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="7" class=""></li>

                            <li style="height: .625rem; width: .625rem; border-radius: 50%; " data-target="#carouselExampleIndicators" data-slide-to="8" class=""></li>

                        </ol>
                        <div class="carousel-inner">

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/3615554991973076125.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/10475767161133495581.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/16475533541034914719.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/8489761991185179638.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/2084797041700880805.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/2046072791534877067.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/1789137758334995492.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/3673344252090953898.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/2727028511343828226.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/18847486541519668856.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/17138734991189439835.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/1275132471305881067.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/19612018711066924289.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/15267720021615861503.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item active">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/35679842524197287.jpg" alt="First slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="http://bograpoly.gov.bd/files/gallery/1283865016954292905.jpg" alt="First slide">
                            </div>

                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>
            </div>

            <div class="card my-4" style="color:#067dbd;">
                <h5 class="card-header">ই-সেবা</h5>

                <div class="card-body p-0">
                    <ul class="list-group">
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span>ওয়েবমেইল</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span>অনলাইনে অভিযোগ প্রেরণ</span></a></li>
                    </ul>

                </div>
            </div>

            <div class="card my-4" style="color:#067dbd;">
                <h5 class="card-header">কেন্দ্রীয় ই-সেবা</h5>

                <div class="card-body p-0">
                    <ul class="list-group">
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span> জন্ম ও মৃত্যু নিবন্ধন</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span>অনলাইনে পাসপোর্টের আবেদন</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span> জাতীয় পরিচয়পত্রের তথ্য</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span>অনলাইন আয়কর পরিশোধ</span></a></li>
                    </ul>

                </div>
            </div>

            <div class="card my-4" style="color:#067dbd;">
                <h5 class="card-header">গুরুত্বপূর্ণ লিংক</h5>

                <div class="card-body p-0">
                    <ul class="list-group">
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span> শিক্ষা মন্ত্রণালয়</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span>কারিগরি শিক্ষা অধিদপ্তর</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span> বাংলাদেশ কারিগরি শিক্ষা বোর্ড</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span>এনএসডিসি</span></a></li>
                        <li class="list-group-item "><i class="  pr-2 fa fa-arrow-circle-right text-primary" aria-hidden="true"></i><a href=""><span> আইএলও</span></a></li>
                    </ul>

                </div>
            </div>

            <div class="card my-4" style="color:#067dbd;">
                <h5 class="card-header">জরুরি হটলাইন</h5>

                <div class="card-body p-0" style="border-width: 1px; border-style: solid; border-top: 0px;">

                    <img class=" card-img pt-1" src="img/999.png" alt="Card image cap">

                </div>
            </div>

            <div class="card my-4" style="color:#067dbd;">
                <h5 class="card-header">করোনা প্রতিরোধে যোগাযোগ</h5>

                <div class="card-body p-0" style="">

                    <img class=" card-img " style="border-width: 1px; border-style: solid; border-top: 0px;" src="img/corona_new.jpg" alt="Card image cap">

                </div>
            </div>

            <div class="card my-4" style="color:#067dbd; ">
                <h5 class="card-header">জাতীয় সংগীত</h5>

                <div class="card-body" style="background: #fff; border-width: 1px; border-style: solid; border-top: 0px;">

                    <audio class="my-2" controls style="width: 100%;">
                        <source src="img/bd_national_anthem.mp3" type="">
                    </audio>

                </div>
            </div>

            <!---Mysql data select code end--->
            <!-- Categories Widget -->

</div>