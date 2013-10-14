class php {
    
    require apache

    $packageList = [
        'php'
        , 'php-common', 'php-cli'
        , 'php-devel', 'httpd-devel'
        , 'php-xml' # needed for PHPUnit
        , 'gcc', 'make'
        , 'pcre-devel' # for apc
    ]
    package { $packageList:
        ensure => 'installed',
    }

    file { '/var/www/html/info.php' :
        source => "puppet:///modules/apache/phpinfo.php"
    }

    file { '/etc/php.ini' :
        source => "puppet:///modules/php/php.ini"
    }
    
}
