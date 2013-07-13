class ntp::install {
    package{"ntp":
        ensure => latest
    }
}

class ntp::config {
   file { "/etc/ntp.conf":
                notify => service["ntp"],
                ensure => file,
                require => Package['ntp'],
                owner => root,
                group => root,
                mode => 644,
                source => "puppet:///modules/ntp/ntp.conf",
        }
}
 
class ntp::service {
    service{"ntp":
        ensure  => running,
        enable  => true,
        require => Class["ntp::config"],
    }
}
 
class ntp {
    include ntp::install, ntp::config, ntp::service
}
