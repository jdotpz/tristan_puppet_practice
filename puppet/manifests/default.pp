node webserver {
	class { 'apache2': }
	class { 'tristanapp': }
}
