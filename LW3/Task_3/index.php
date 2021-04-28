<?php

header("Content-Type: text/plain");
$patern_password = '/^[a-zA-z\d]*$/';
$password = getQueryStringParameter('password');
if (preg_match($patern_password, $password))
{
    $strength = 4 * strlen($password);
    $strength += 4 * preg_match_all('/\d/', $password);
    $strength += ((strlen($password) - preg_match_all('/[A-Z]/', $password))* 2);
    $strength += ((strlen($password) - preg_match_all('/[a-z]/', $password)) * 2);
    if (preg_match('/^\d+$/', $password))
    {
        $strength -= strlen($password);
    }
    if (preg_match('/^[a-zA-Z]+$/', $password))
    {
        $strength -= strlen($password);
    }
    foreach (count_chars($password, 1) as $number)
    {
        $number > 1 ? $strength-- : null;
    }
    echo('password strength: ' . $strength);
}
else
{
    echo('Incorrect password');
    
}

function getQueryStringParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}
