<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>M-Dev Store</title>
    <!-- <link href="/styles/style.css" rel="stylesheet" type="text/css" media="all"> -->
    <!-- <noscript> -->
    <link rel="stylesheet" href="styles/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="styles/style.css">
    <!-- </noscript> -->
</head>

<body>

    <div id="top">
        <!-- Top Begin -->

        <div class="container">
            <!-- container Begin -->

            <div class="col-md-6 offer">
                <!-- col-md-6 offer Begin -->

                <a href="#" class="btn btn-success btn-sm">Welcome</a>
                <a href="checkout.php">4 Items In Your Cart | Total Price: $300 </a>

            </div><!-- col-md-6 offer Finish -->

            <div class="col-md-6">
                <!-- col-md-6 Begin -->

                <ul class="menu">
                    <!-- cmenu Begin -->

                    <li>
                        <a href="customer_register.php">Register</a>
                    </li>
                    <li>
                        <a href="checkout.php">My Account</a>
                    </li>
                    <li>
                        <a href="cart.php">Go To Cart</a>
                    </li>
                    <li>
                        <a href="checkout.php">Login</a>
                    </li>

                </ul><!-- menu Finish -->

            </div><!-- col-md-6 Finish -->

        </div><!-- container Finish -->

    </div><!-- Top Finish -->

    <div id="navbar" class="navbar navbar-default">
        <!-- navbar navbar-default Begin -->

        <div class="container">
            <!-- container Begin -->

            <div class="navbar-header">
                <!-- navbar-header Begin -->

                <a href="index.php" class="navbar-brand home">
                    <!-- navbar-brand home Begin -->

                    <img src="images/ecom-store-logo.png" alt="M-dev-Store Logo" class="hidden-xs">
                    <img src="images/ecom-store-logo-mobile.png" alt="M-dev-Store Logo Mobile" class="visible-xs">

                </a><!-- navbar-brand home Finish -->

                <button class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

                    <span class="sr-only">Toggle Navigation</span>

                    <i class="fa fa-align-justify"></i>

                </button>

                <button class="navbar-toggle" data-toggle="collapse" data-target="#search">

                    <span class="sr-only">Toggle Search</span>

                    <i class="fa fa-search"></i>

                </button>

            </div><!-- navbar-header Finish -->

            <div class="navbar-collapse collapse" id="navigation">
                <!-- navbar-collapse collapse Begin -->

                <div class="padding-nav">
                    <!-- padding-nav Begin -->

                    <ul class="nav navbar-nav left">
                        <!-- nav navbar-nav left Begin -->

                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <a href="shop.php">Shop</a>
                        </li>
                        <li>
                            <a href="checkout.php">My Account</a>
                        </li>
                        <li>
                            <a href="cart.php">Shopping Cart</a>
                        </li>
                        <li>
                            <a href="contact.php">Contact Us</a>
                        </li>

                    </ul><!-- nav navbar-nav left Finish -->

                </div><!-- padding-nav Finish -->

                <a href="cart.php" class="btn navbar-btn btn-primary right">
                    <!-- btn navbar-btn btn-primary Begin -->

                    <i class="fa fa-shopping-cart"></i>

                    <span>4 Items In Your Cart</span>

                </a><!-- btn navbar-btn btn-primary Finish -->

                <div class="navbar-collapse collapse right">
                    <!-- navbar-collapse collapse right Begin -->

                    <button class="btn btn-primary navbar-btn" type="button" data-toggle="collapse"
                        data-target="#search">
                        <!-- btn btn-primary navbar-btn Begin -->

                        <span class="sr-only">Toggle Search</span>

                        <i class="fa fa-search"></i>

                    </button><!-- btn btn-primary navbar-btn Finish -->

                </div><!-- navbar-collapse collapse right Finish -->

                <div class="collapse clearfix" id="search">
                    <!-- collapse clearfix Begin -->

                    <form method="get" action="results.php" class="navbar-form">
                        <!-- navbar-form Begin -->

                        <div class="input-group">
                            <!-- input-group Begin -->

                            <input type="text" class="form-control" placeholder="Search" name="user_query" required>

                            <span class="input-group-btn">
                                <!-- input-group-btn Begin -->

                                <button type="submit" name="search" value="Search" class="btn btn-primary">
                                    <!-- btn btn-primary Begin -->

                                    <i class="fa fa-search"></i>

                                </button><!-- btn btn-primary Finish -->

                            </span><!-- input-group-btn Finish -->

                        </div><!-- input-group Finish -->

                    </form><!-- navbar-form Finish -->

                </div><!-- collapse clearfix Finish -->

            </div><!-- navbar-collapse collapse Finish -->

        </div><!-- container Finish -->

    </div><!-- navbar navbar-default Finish -->

    <div id="content">
        <div class="container">
            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        Shop
                    </li>
                </ul>
            </div>
            <div class="col-md-3">
                <?php
    include("includes/sidebar.php")
    ?>
            </div>

            <div class="col-md-9">
                <div id="productMain" class="row">
                    <div class="col-sm-6">
                        <div id="mainImage">
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <center><img class="img-responsive"
                                                src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                                alt="img"></center>
                                    </div>
                                    <div class="item">
                                        <center><img class="img-responsive"
                                                src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                                alt=""></center>
                                    </div>
                                    <div class="item">
                                        <center><img class="img-responsive"
                                                src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                                alt=""></center>
                                    </div>
                                </div>
                                <a href="#myCarousel" class="left carousel-control" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a href="#myCarousel" class="right carousel-control" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="box">
                            <h1 class="text-center">M-Dev Polo Sirt Men</h1>
                            <form action="details.php" class="form-horizontal" method="post">
                                <div class="form-group">
                                    <label for="" class="col-md-5 control-label">
                                        Products Quantity
                                    </label>
                                    <div class="col-md-7">
                                        <select name="product_qty" id="" class="form-control">
                                            <option value="">1</option>
                                            <option value="">2</option>
                                            <option value="">3</option>
                                            <option value="">4</option>
                                            <option value="">5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-5 control-label">
                                        Prodcut Size
                                    </label>
                                    <div class="col-md-7">
                                        <select name="product_size" id="" class="form-control">
                                            <option value="">Select a Size</option>
                                            <option value="">Small</option>
                                            <option value="">Medium</option>
                                            <option value="">Large</option>

                                        </select>
                                    </div>
                                </div>

                                <p class="price">$50</p>
                                <p class="text-center buttons"><button class="btn btn-primary i fa fa-shopping-cart">
                                        Add
                                        To Cart</button></p>

                            </form>
                        </div>
                        <div class="row" id="thumbs">

                            <div class="col-xs-4">

                                <a href="" class="thumb">
                                    <img src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                        alt="img" class="img-responsive">
                                </a>

                            </div>
                            <div class="col-xs-4">

                                <a href="" class="thumb">
                                    <img src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                        alt="img" class="img-responsive">
                                </a>

                            </div>
                            <div class="col-xs-4">

                                <a href="" class="thumb">
                                    <img src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                        alt="img" class="img-responsive">
                                </a>

                            </div>

                        </div>
                    </div>
                </div>
                <div class="box" id="details">

                    <h4>Proeduct Details</h4>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum dolores itaque voluptas,
                        molestias corporis culpa sequi molestiae, fugit dolor quis consequuntur! Autem, beatae
                        blanditiis excepturi nulla omnis rerum quas minima!
                    </p>
                    <h4>Size</h4>
                    <ul>
                        <li>Small</li>
                        <li>Medium</li>
                        <li>Large</li>
                    </ul>
                    <hr />
                </div>
                <div id=" row same-heigh-row">
                    <div class="col-md-3 col-sm-6">
                        <div class="box same-heigth headline">
                            <h3 class="text-center">Product You Maybe Like</h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 center-responsive">
                        <div class="product smae-heigh">
                            <a href="details.php">
                                <img class="img-responsive"
                                    src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                    alt="img">
                            </a>
                            <div class="text">
                                <h3><a href="details.php">M-Dev Polo T-shirt Women</a></h3>
                                <p class="price">$40</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 center-responsive">
                        <div class="product smae-heigh">
                            <a href="details.php">
                                <img class="img-responsive"
                                    src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                    alt="img">
                            </a>
                            <div class="text">
                                <h3><a href="details.php">M-Dev Polo T-shirt Women</a></h3>
                                <p class="price">$40</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 center-responsive">
                        <div class="product smae-heigh">
                            <a href="details.php">
                                <img class="img-responsive"
                                    src="admin_area/product_images/Linux-Kernel-5.8-Reaches-EOL-Users-Advised-to-Upgrade-to-Linux-5.9-Series.png"
                                    alt="img">
                            </a>
                            <div class="text">
                                <h3><a href="details.php">M-Dev Polo T-shirt Women</a></h3>
                                <p class="price">$40</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <?php
    include("includes/footer.php")
    ?>

    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>


</body>

</html>