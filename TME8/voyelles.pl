#! /usr/bin/perl -l

use strict;

my @res = ();

foreach my $e (@ARGV){
    my @tab = split //,$e;

    foreach my $el (@tab){
      push @res,$el if($el =~ /[aeiou]/);
    }
}

print @res;
