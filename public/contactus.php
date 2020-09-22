<?php
   include 'configure.php';
   if(isset($_GET['fname'])){            
    $ins=$mysqli->query ("INSERT INTO `mop`.`contactus` (`fname`,`sname`,`email`,`phone`,`place`,`city`,`village`,`postal`,`topic`,`message`) VALUES 
    ('$_GET[fname]','$_GET[sname]','$_GET[email]', '$_GET[phone]','$_GET[place]','$_GET[city]','$_GET[village]','$_GET[postal]','$_GET[topic]','$_GET[message]');
    ");
    if($ins)
    {
        http_response_code(200);
        echo "Done";
    }
    else{
        http_response_code(400);
        echo $mysqli->error;
        }
    }

?>
