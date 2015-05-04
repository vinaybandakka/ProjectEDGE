node 'jenkins.projectedge.com' {
   class{ 'jenkins':
       configure_firewall => false,
   }

   include jenkins

   jenkins::plugin {
     "git" : ;
   }

   jenkins::plugin {
     "artifactory" : ;
   }

   include edge_fw
}
