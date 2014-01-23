class my::server::user {

  user { 'coder':
    ensure     => 'present',
    comment    => 'Slava Semushin',
    home       => '/home/coder',
    managehome => true,
    shell      => '/bin/sh'
  }

}
