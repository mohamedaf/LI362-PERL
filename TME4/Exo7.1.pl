#! /usr/bin/perl -l

use strict;

my %pages = ();

foreach my $fic (@ARVG){
  open F, $fic;
  
  while (my $l = <F>){
    chomp $l;
    my $tab = split /\b/ ,$l;
    push @{$pages{$tab[0]}} ,$tab[-4];
  }
  
  close F;
}

foreach my $k (keys %pages){
  print "$k : @{$pages{$k}}";
}