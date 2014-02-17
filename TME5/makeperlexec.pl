#! /usr/bin/perl -l 

use strict;

foreach my $f(@ARGV){
    if(-f $f && $f =~ /\.pl$/){
      open T, $f;
      my $ligne = <T>;
      
      if($ligne =~ /#! \/.*perl.*/){
        chmod oct(755), $f unless (-x $f);
      }
	
      close T;
    }
}


