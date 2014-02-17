#! /usr/bin/perl -l

use strict;

my $somme = 0;

if(-d $ARGV[0]){
    opendir my $dr, $ARGV[0] or die "Impossible d'ouvrir le repertoire !!";
    
    while (my $f = readdir $dr){
      if(-f $f){
        my @d = stat $f;
        $somme += $d[7];
      }
    }

    closedir $dr;

    print $somme;
}
