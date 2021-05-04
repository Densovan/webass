<?php
echo $login_alert;
?>
<div class="box">
    <!-- box Begin -->

    <div class="box-header">
        <!-- box-header Begin -->

        <center>
            <!-- center Begin -->

            <h1> Login </h1>

            <p class="lead"> Already have our account..? </p>

            <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, maxime. Laudantium
                omnis, ullam, fuga officia provident error corporis consectetur aliquid corrupti recusandae minus ipsam
                quasi. Perspiciatis nemo, nostrum magni odit! </p>

        </center><!-- center Finish -->

    </div><!-- box-header Finish -->

    <form method="post" action="checkout.php">
        <!-- form Begin -->

        <div class="form-group">
            <!-- form-group Begin -->

            <label> Email </label>

            <input name="c_email" type="text" class="form-control" required>

        </div><!-- form-group Finish -->

        <div class="form-group">
            <!-- form-group Begin -->

            <label> Password </label>

            <input name="c_pass" type="password" class="form-control" required>

        </div><!-- form-group Finish -->

        <div class="text-center">
            <!-- text-center Begin -->

            <button name="login" value="Login" class="btn btn-primary">

                <i class="fa fa-sign-in"></i> Login

            </button>

        </div><!-- text-center Finish -->

    </form><!-- form Finish -->

    <center>
        <!-- center Begin -->

        <a href="customer_register.php">

            <h3> Dont have account..? Register here </h3>

        </a>

    </center><!-- center Finish -->

</div><!-- box Finish -->

<?php 
include "auth.php";
?>