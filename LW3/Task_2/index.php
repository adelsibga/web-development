<?php

header("Content-Type: text/plain");

function getQueryStringParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

$patern_identifier = '/^[a-zA-z][a-zA-z\d]*$/';
$identifier = getQueryStringParameter('identifier');
if (preg_match($patern_identifier, $identifier))
{
    echo("This is an identifier");
}
else
{
    echo('This is not an identifier');
}
