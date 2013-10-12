class php-qa-tools {
    
    require php
    require pear-after

    exec { 'php::pear::install_phpunit' :
        command => 'pear install --alldeps phpunit/PHPUnit'
    }

}
