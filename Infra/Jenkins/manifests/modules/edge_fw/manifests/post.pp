 class edge_fw::post {

   firewall { "999 drop all other requests":
     action => "drop",
   }

 }

