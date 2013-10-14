class php-qa-tools {
    
    require php
    require pear-after

    exec { 'php::qa-tools::install-phpunit':
        command => 'pear install --alldeps phpunit/PHPUnit',
        creates => '/usr/bin/phpunit',
        require => Exec['php::pear::discover-phpunit']
    }
    
    exec { 'php::qa-tools::install-phploc':
        command => 'pear install pear.phpunit.de/phploc',
        creates => '/usr/bin/phploc',
        require => Exec['php::pear::update-channels']
    }
    
    exec { 'php::qa-tools::install-phpmd':
        command => 'pear install phpmd/PHP_PMD',
        creates => '/usr/bin/phpmd',
        require => Exec['php::pear::discover-phpmd']
    }

}
