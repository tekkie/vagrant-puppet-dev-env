class php-qa-tools {
    
    require php
    require pear-after

    # @link http://phpunit.de/manual/3.7/en/index.html
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
    
    exec { 'php::qa-tools::install-phpcpd':
        command => '/usr/bin/pear install --alldeps pear.phpunit.de/phpcpd',
        creates => '/usr/bin/phpcpd',
    }
    
    exec { 'php::qa-tools::install-phpdcd':
        command => '/usr/bin/pear install --alldeps pear.phpunit.de/phpdcd-beta',
        creates => '/usr/bin/phpdcd',
    }
    
    exec { 'php::qa-tools::install-pdepend':
        command => '/usr/bin/pear install --alldeps pear.pdepend.org/PHP_Depend',
        creates => '/usr/bin/pdepend',
    }

}
