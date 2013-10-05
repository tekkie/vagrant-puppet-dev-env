class base {

    $needed = [
        'file', 'jwhois'
        , 'mc', 'mlocate', 'patch', 'screen'
        , 'telnet', 'traceroute'
        , 'man', 'rsync'
        , 'elinks', 'vim-enhanced'
        # packages below give errors
        # , 'htop'
    ]
    package { $needed:
        ensure => present,
    }

    file { '/etc/motd':
      source => "puppet:///modules/base/motd"
    }

}
