class base () {
  package {
    'wget':
      ensure => installed
  }

  package { [
            'unzip',
            'wget',
            'ntp',
            'git'
            ]:
      ensure => installed
  }

  file {
    '/opt/tristan':
      ensure => directory,
      owner  => 'ubuntu',
      mode   => '0755'
  }

  file {
    '/var/log/tristan':
      ensure => directory,
      owner  => 'ubuntu',
      mode   => '0755'
  }

}