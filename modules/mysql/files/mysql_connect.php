<?php

/**
 * Check that PHP can talk to MySQL and that the proper database connection is in place.
 */

$link = mysql_connect('localhost', 'root', 'ils812wk');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully' . PHP_EOL . PHP_EOL;
mysql_close($link);
