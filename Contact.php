<?php

    $custName = $_POST['custName']; 
    $custEmail = $_POST['custEmail']; 
    $custPhone = $_POST['custPhone']; 
    $custMessage = $_POST['custMessage']; 

    if (!empty($custName) || !empty($custEmail) || !empty($custPhone) || !empty($custMessage)) {
        $host = "localhost" ; 
        $dbUsername = "root" ; 
        $dbPassword = "" ; 
        $dbname = "mydb" ;
        
        $conn = new mysqli($host , $dbUsername , $dbPassword , $dbname) ; 
        if(mysqli_connect_error()){
            die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error()) ; 
        }
       
            $INSERT = "INSERT Into contactForm(custName , custEmail , custPhone , custMessage) values( ? , ? , ? , ? ) " ; 

        
                
                $stmt = $conn->prepare($INSERT);
                $stmt->bind_param("ssss" , $custName , $custEmail , $custPhone , $custMessage);  
                $stmt->execute();
                echo "Details Submitted Successfully ! " ;  

            $stmt->close() ; 
            $conn->close() ; 
        
    }
    else{
        echo "Please fill all fields" ; 
        die() ; 
    }

?>
