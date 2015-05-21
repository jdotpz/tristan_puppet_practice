class tristanapp () {
	exec {
		'get-s3-file':
			path => '/usr/bin/',
			cwd => '/home/ubuntu/',
			command => '/usr/bin/wget https://s3.amazonaws.com/thefelixculpa.com/packages/culpa.zip',
	}

	package { 'unzip':
		ensure => latest,
	}

	exec {
		'unzip-s3-file':
			path => '/usr/bin/',
			cwd => '/home/ubuntu/',
			command => '/usr/bin/unzip -o /home/ubuntu/culpa.zip -d /var/www/html/',
			require => Package['unzip'],
			notify => Service['apache2']
	}
}
