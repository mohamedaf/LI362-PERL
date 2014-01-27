#!/usr/bin/perl -l

foreach $fichier (@ARGV) {
  
  if ($fichier = ̃ /ˆtoto.*/) {
    open (F, $fichier);
    
    while ($ligne = <F>) {
        $ligne = ̃ s/chaine/tutu/g ;
        print $ligne;
    }
    
    close (F);
  }
}




