#! /usr/bin/perl -l

use strict;

my $RegexIP = $ARGV[0];
my @pages = ();

open F, "trace";

while(my $l = <F>){
  chomp $l;
  my @m = split /\b/ ,$l;
  
  if($ARGV[0] =~ $m[0]) push @m ,$m[-4];
}

close F;

print "$_" foreach (@m);





