#! /usr/bin/perl -l

open F, "<imprimante";

foreach $l (<F>){
  @nom1 = split /\|/ ,$l;
  @nom2 = split /:/ ,$nom1[1];
  print "nom 1 : $nom1[0], nom 2 : $nom2[0]";
}

close F;
