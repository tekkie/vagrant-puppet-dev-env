class php-qa-tools {
    
    require php
    require pear-after

    exec { 'php::qa-tools::install-phpunit':
        command => 'pear install --alldeps phpunit/PHPUnit',
        require => Exec['php::pear::discover-phpunit']
    }
    
    exec { 'php::qa-tools::install-phploc':
        command => 'pear install pear.phpunit.de/phploc',
        require => Exec['php::pear::update-channels']
    }

}
