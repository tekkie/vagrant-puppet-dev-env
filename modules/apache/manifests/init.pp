class apache {

    package { 'httpd':
        ensure => 'installed',
    }
    
    service { 'httpd':
        ensure => 'running',
        require => Package['httpd'],
    }
    
    file { '/var/www/html/index.html' :
        source => "puppet:///modules/apache/webServerIndex.html"
    }
    
}
