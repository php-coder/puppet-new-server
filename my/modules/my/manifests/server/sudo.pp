class my::server::sudo {
  $sudo_package = 'sudo'
  $user_login   = 'coder'

  package { $sudo_package:
    ensure => 'installed'
  }

  file { "/etc/sudoers.d/01_${user_login}":
    ensure   => 'file',
    content  => "${user_login} ALL=(ALL) NOPASSWD: ALL\n",
    owner    => 'root',
    group    => 'root',
    mode     => '0440',
    require => [
      Package[$sudo_package],
      Class['my::server::user']
    ]
  }

}
