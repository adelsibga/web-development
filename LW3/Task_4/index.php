<?php
	header("Content-Type: text/plain");
    
    function  getGETParameter(string $parameter): ?string
    {
        return isset($_GET[$parameter])?(string)$_GET[$parameter]: null; 
    }

	$firstname = getGETParameter("first_name");
	$lastname = getGETParameter("last_name");
	$email = getGETParameter("email");
	$age = getGETParameter("age");

	if (isset($email))
	{
        $file = "data/" . $email . '.txt';
        $data = file_get_contents($file);
		$data = "First name: " . $firstname . "\n" . "Last name: " . $lastname."\nEmail: ".$email."\nAge: ".$age;
	    file_put_contents($file, $data);
	}
	else
	{
		echo "email обязателен!";
	}