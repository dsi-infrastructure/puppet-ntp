# class ntp
#

class ntp($server="disabled") {

	package{"ntp":
		ensure => latest,
	}

	if $server == "enable" {
		$servers = ["0.debian.pool.ntp.org iburst",
								"1.debian.pool.ntp.org iburst",
								"2.debian.pool.ntp.org iburst",
								"3.debian.pool.ntp.org iburst", ]
	} else {
		$servers = ["1.ntp.srv.gov.pf iburst",
								"2.ntp.srv.gov.pf iburst", ]
	}

	file { "/etc/ntp.conf":
		notify	=> service["ntp"],
		ensure	=> file,
		require	=> Package['ntp'],
		owner		=> root,
		group		=> root,
		mode		=> 644,
		content	=> template("ntp/ntp.erb");
	}
 
	service {"ntp":
		ensure  => running,
		enable  => true,
		require => File["/etc/ntp.conf"],
	}
}
