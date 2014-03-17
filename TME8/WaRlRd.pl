#! /usr/bin/perl -l

use strict;

my @res = ();

foreach my $e (@ARGV){
    my @tab = split //,$e;
    my $i = 1;

    foreach my $el (@tab){
      if($i % 2){
        $el =~ s/$el/\u$el/;
        push @res,$el;
      }
      else{
        $el =~ s/$el/\l$el/;
        push @res,$el;
      }
      $i++;
    }

    push @res," ";
}

pop @res;   #supprime le dernier espace
print @res;
