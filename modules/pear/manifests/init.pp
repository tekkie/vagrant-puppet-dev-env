class pear {

    $packageList = [
        # note: php-pear also installs pecl
        'php-pear'
    ]
    
    package { $packageList:
        ensure => 'installed',
    }
    
    exec { 'php::pear::auto_discover':
        command => 'pear config-set auto_discover 1 system',
        unless  => 'pear config-get auto_discover system | grep -q 1',
        path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
    }

}
