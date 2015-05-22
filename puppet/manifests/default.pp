node basenode {
  class { 'base': }
}

node webserver inherits basenode {
	class { 'apache2': }
	class { 'tristanapp': }
}

