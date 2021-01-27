<nav class="navbar navbar-expand-md navbar-dark gr-b sb-navbar">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="<?php echo $dir ?>index.php"></i> প্রধান পাতা<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $dir ?>pages/about/"> বিদ্যালয়  সম্পর্কিত</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								যোগাযোগ
							</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="<?php echo $dir ?>pages/contact/">যোগাযোগ</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $dir ?>pages/profile/">শিক্ষক মন্ডলী</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $dir ?>pages/students/">শিক্ষার্থী</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">নির্দেশিকা</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">পরীক্ষা</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $dir ?>pages/blog/">ফলাফল</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $dir ?>../admin">ADMIN</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="কিছু অনুসন্ধান করুন..." aria-label="Search">
            <button class="btn btn-danger my-2 my-sm-0" type="submit">অনুসন্ধান</button>
        </form>
    </div>
</nav>