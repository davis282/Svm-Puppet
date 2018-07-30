node "svm9.llnl.gov" {

file { '/etc/hosts':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/etc/puppet/manifests/hosts",
  }
file { '/etc/resolv.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/etc/puppet/manifests/resolv.conf",
  }
package { 'git':
    ensure => "latest"
}

} # End node svm9.llnl.gov

