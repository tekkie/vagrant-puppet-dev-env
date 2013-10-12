class pear-after {
    
    require pear

    exec { 'php::pear::auto_discover':
        command => 'pear config-set auto_discover 1 system',
        unless  => 'pear config-get auto_discover system | grep -q 1',
        path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
    }

    exec { 'php::pear::discover-phpunit':
        command => 'pear channel-discover pear.phpunit.de'
    }
    
/*
    exec { 'php::pear::discover_symfony' :
        command => 'pear channel-discover pear.symfony.com'
    }
    
    exec { 'php::pear::discover_ez' :
        command => 'pear channel-discover components.ez.no'
    }
*/
    
    exec { 'php::pear::update-channels':
      command => 'pear update-channels',
      require => [Package['php-pear']]
    }
    
}
