class php {
    
    require apache

    $packageList = [
        'php'
        , 'php-common', 'php-cli'
        , 'php-devel', 'httpd-devel'
        , 'gcc', 'make'
        , 'pcre-devel' # for apc
    ]
    package { $packageList:
        ensure => 'installed',
    }

    file { '/var/www/html/info.php' :
        source => "puppet:///modules/apache/phpinfo.php"
    }
    
}
