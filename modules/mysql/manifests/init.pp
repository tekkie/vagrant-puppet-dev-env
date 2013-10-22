class mysql {

    $packageList = [
        'mysql-server', 'mysql-devel', 'php-mysql'
    ]

    package { $packageList:
        ensure => present,
    }
    
    service { 'mysqld' :
        ensure  => 'running',
        enable  => 'true',
        require => Package['mysql-server'],
    }
    
    exec { 'mysql::admin::password':
        command => '/usr/bin/mysqladmin -u root password ils812wk',
        require => [Package['mysql-server'], Package['httpd'], Service['mysqld']],
        unless  => 'mysql -u root',
    }
    
    file { '/var/www/html/mysql.php':
      source => "puppet:///modules/mysql/mysql_connect.php"
    }

}
