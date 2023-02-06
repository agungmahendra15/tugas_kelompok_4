<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Thesisku</title>
    <!-- css -->
    <!--<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">-->
    <link rel="stylesheet" href="<?=base_url('assets/bootstrap/css/bootstrap.min.css')?>">
    <link rel="stylesheet" href="<?=base_url('assets/font-awesome/css/font-awesome.min.css')?>">
    <link rel="stylesheet" href="<?=base_url('assets/css/form-elements.css')?>">
    <link rel="stylesheet" href="<?=base_url('assets/css/style.css')?>">

    <!-- css end -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <?php if(!empty(session()->getFlashdata('error'))) { ?>
    <div class="alert alert-danger">
        <?php echo session()->getFlashdata('error') ?>
    </div>
    <?php } ?>
    <!-- content start -->
    <div class="top-content">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="gambar/Bullwhip_effect.png" alt="Chania">
                </div>

                <div class="item">
                    <img src="<?=base_url('gambar/business_framework_bullwhip_effect_in_supply_chains_powerpoint_presentation_2_1.jpg')?>"
                        alt="Chania">
                </div>

                <div class="item">
                    <img src="<?=base_url('gambar/img12.jpg')?>" alt="Flower">
                </div>

                <div class="item">
                    <img src="<?=base_url('gambar/pZjJsM2.jpg')?>" alt="Flower">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 form-box">
                <div class="form-top">
                    <div class="form-top-left">
                        <h3>Bullwhip Effect By Satrianansyah</h3>
                        <p>Login To Application:</p>
                    </div>
                    <div class="form-top-right">
                        <i class="fa fa-lock"></i>
                    </div>
                </div>

                <div class="form-bottom">
                    <form role="form" action="<?=base_url('auth/login')?>" method="post" class="login-form">
                        <div class="form-group">
                            <input required type="text" name="username" placeholder="Username..." class="form-control">
                        </div>
                        <div class="form-group">
                            <input required type="password" name="password" placeholder="Password..."
                                class="form-control">
                        </div>
                        <button type="submit" class="btn btn-primary">Sign in!</button>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- Content End -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?=base_url('js/jquery.min.js')?>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?=base_url('js/bootstrap.min.js')?>"></script>
</body>

</html>