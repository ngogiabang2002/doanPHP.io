<?php

require './PHPMailer/Exception.php';
require './PHPMailer/PHPMailer.php';
require './PHPMailer/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
class SendMail
{
    public function send_Mail($subject, $message)
    {
        $mail = new PHPMailer(true);
        //Server settings
//        $mail->SMTPDebug = 2;                                 // Enable verbose debug output
        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = 'bangngo568@gmail.com';                 // SMTP username
        $mail->Password = 'Bang@191202';                           // SMTP password
        $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 587;                                    // TCP port to connect to

        //Recipients
        $mail->setFrom('bangngo568@gmail.com', 'Go Martket');
        $mail->addAddress('bangngo568@gmail.com');     // Add a recipient

        //Content
        $mail->isHTML(false);                                  // Set email format to HTML
        $mail->Subject = $subject;
        $mail->Body = $message;
//    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        $mail->send();
    }
}