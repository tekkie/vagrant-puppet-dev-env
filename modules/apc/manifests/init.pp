class apc {
    
    require apache
    require php

    exec { 'apc install':
        command => 'pecl install apc',
    }
    
    exec { 'apc php extension enable':
        command => 'echo "extension=apc.so" > /etc/php.d/apc.ini'
    }
    
    exec { 'apc copy config file':
        command => 'cp /usr/share/pear/apc.php /var/www/html/',
    }
    
    exec { 'restart apache':
        command => 'service httpd restart',
    }

}
