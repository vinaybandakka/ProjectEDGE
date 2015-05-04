class edge_fw {

   stage { 'fw_pre':  before  => Stage['main']; }
   stage { 'fw_post': require => Stage['main']; }

   class { 'firewall':
     stage => 'fw_pre',
   }

   class { 'edge_fw::pre':
     stage => 'fw_pre',
   }

}
