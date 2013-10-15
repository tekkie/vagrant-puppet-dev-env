class iptables {

    file { '/etc/sysconfig/iptables' :
        source => "puppet:///modules/iptables/iptables"
    }

    
}
