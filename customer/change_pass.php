<h1 align="center">Change Password</h1>



<form action="" method="post" enctype="multipart/form-data">
    <!----- form Begin---->

    <div class="form-group">
        <!----form-group Begin--->

        <label for="">Your Old Password: </label>
        <input type="text" name="old_pass" class="form-control" required>
    </div>
    <!--- form-group Finish---->
    <div class="form-group">
        <!----form-group Begin--->

        <label for="">Your New Password: </label>
        <input type="text" name="new_password" class="form-control" required>
    </div>
    <!--- form-group Finish---->
    <div class="form-group">
        <!----form-group Begin--->

        <label for="">Confirm Your New Password: </label>
        <input type="text" name="new_pass_again" class="form-control" required>
    </div>
    <!--- form-group Finish---->

    <div class="text-center">
        <!----text-center Begin----->
        <button type="submit" name="submit" class="btn btn-primary"><i class="fa fa-user-md">Update Now</i></button>
    </div>
    <!----text-center Finish----->

</form>
<!---form Finish---->