class pear {

    $packageList = [
        # note: php-pear also installs pecl
        'php-pear'
    ]
    
    package { $packageList:
        ensure => 'installed',
    }
    
}
