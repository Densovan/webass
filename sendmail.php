<?php 
 
  use PHPMailer\PHPMailer\PHPMailer;

  require_once "phpmailer/Exception.php";
  require_once "phpmailer/PHPMailer.php";
  require_once "phpmailer/SMTP.php";

  $mail = new PHPMailer(true);
  $alert = '';
  if (isset($_POST["submit"])) {
        $name = $_POST["name"];
        $email = $_POST["email"];
        $subject = $_POST["subject"];
        $message = $_POST["message"];
        try {
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = "sarimramata@gmail.com"; // Gmail address which you want to use a SMTP  Sender 
            $mail->Password = "04031998"; // Gmail Pssword
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = '587';
            $mail->setFrom("sarimramata@gmail.com"); // Gmail address which yo uused as SMTP server 
            $mail->addAddress("sarimramata@gmail.com"); // Email address you want to recieve email Reciever
            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body = "<h3> Name: $name <br> Email: $email <br> Message: $message</h3>";
            $mail->send();
            $alert = '<div class="alert alert-success alert-dismissible">
              <span> Message Sent! Thank you for contacting us. </span>
          </div>';
        }catch(Exception $e) {
            $alert = ' <div class="alert alert-danger alert-dismissible">
            <span>'.$e->getMessage().' </span>
          </div>';
        }
  }
?>