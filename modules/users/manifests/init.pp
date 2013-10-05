class users {
    
    user { 'trooper' :
        ensure => 'present',
        password => '$1$DZknav89$Dzfk3vmNarvLo4bHFSpe31',
        managehome => true,
    }
    
}
