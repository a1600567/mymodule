class asennusmoduuli {

        exec {'apt-get update':
        command => '/usr/bin/apt-get update',
        refreshonly => true,
                }

        package {apache2:
                require => Exec['apt-get update'],
                ensure => 'installed',
                allowcdrom => 'true',
                }

        package {openjdk-8-jre:
                require => Exec['apt-get update'],
                ensure => 'installed',
                allowcdrom => 'true',
                }

        package {eclipse:
                require => Exec['apt-get update'],
                ensure => 'installed',
                allowcdrom => 'true',
                }

        file {'/var/www/html/index.html':
                content => "Working localhost to write HTML code besides java. You can find the index.html from the path /var/www/html/index.html",
                }

        exec { 'OpenEclipse':
                command => '/usr/bin/eclipse &',
                require => Package['eclipse'],
                }
}
