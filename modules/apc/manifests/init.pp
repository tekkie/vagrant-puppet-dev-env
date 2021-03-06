class apc {
    
    require apache
    require php

    exec { 'apc::install':
        command => 'pecl install apc',
        unless  => 'php -i | grep "apc.enabled"',
    }
    
    exec { 'apc::php-extension-enable':
        command => 'echo "extension=apc.so" > /etc/php.d/apc.ini',
        unless  => 'php -i | grep "apc.enabled"',
    }
    
    exec { 'apc::copy-config-file':
        command => 'cp /usr/share/pear/apc.php /var/www/html/',
        unless  => 'php -i | grep "apc.enabled"',
    }
    
    exec { 'apc::restart-apache':
        command => 'service httpd restart',
        unless  => 'php -i | grep "apc.enabled"',
    }

}
