<?php
	header("Content-Type: text/plain");
    
	$file = fopen("email.txt", 'r') or die("Не удалось открыть файл!");
    while(!feof($file))
    {
        $line = htmlentities(fgets($file));
        $data = explode(": ", $line);
        echo $data[0];
		if (strlen($data[1]) > 0)
		{
            echo ": ".$data[1];
		}
		else
		{
			echo ":  ";
		}
    }
    fclose($file);