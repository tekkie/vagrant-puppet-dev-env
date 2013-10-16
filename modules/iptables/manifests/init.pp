class iptables {

    file { '/etc/sysconfig/iptables' :
        source => "puppet:///modules/iptables/iptables"
    }
   
    exec { iptables_restart: command => "/etc/init.d/iptables restart"
    }
}
