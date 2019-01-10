#!/usr/bin/env sh

echo -n "Content-type: text/html\r\n";
echo -n "\r\n";

echo '<!DOCTYPE html>';
echo '<html><body>';
echo '<h1>Environment</h1>';
echo '<ul>';
env | sort | xargs -I '{}' echo '<li>{}</li>';
echo '</ul>';
echo '</body></html>';
