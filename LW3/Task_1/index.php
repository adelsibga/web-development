<?php
	header("Content-Type: text/plain");

    function  getGETParameter(string $parameter): ?string
    {
        return isset($_GET[$parameter])?(string)$_GET[$parameter]: null; 
    }

    $string1 = getGETParameter ("text");
	$string2 = preg_replace("/\s+/", " ", $string1);
	$string3 = trim($string2, " ");
	echo $string3;
