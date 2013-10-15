group { 'puppet': ensure => present }
Exec { path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ] }
File { owner => 0, group => 0, mode => 0644 }

include base
include apache
include php
include pear
include apc
include php-qa-tools
include users
include iptables
include xxx

/*
package { [
    # 'build-essential'
    # 'vim'
     'curl', 'mlocate', 'links'
    , 'git-core'
    , 'httpd'
    , 'php', 'php-mysql', 'php-cli'
    # , 'git-flow'
    , 'mysql-server'
  ]:
  ensure  => 'installed',
}

*/
