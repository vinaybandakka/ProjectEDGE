class edge_fw::pre {

  # Default firewall rules
  firewall { '000 accept all icmp':
    proto   => 'icmp',
    action  => 'accept',
  }

  firewall { '001 accept all to lo interface':
    proto   => 'all',
    iniface => 'lo',
    action  => 'accept',
  }

  firewall { '002 accept related established rules':
    proto   => 'all',
    state   => ['RELATED', 'ESTABLISHED'],
    action  => 'accept',
  }

  # Allow SSH
  firewall { '100 allow ssh access':
    port   => '22',
    proto  => tcp,
    action => accept,
  }
  firewall { '200 allow jenkins access':
     port   => '8080',
     proto => tcp,
     action => "accept",
   }
}
