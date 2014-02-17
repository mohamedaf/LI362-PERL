#! /usr/bin/perl -l 

use strict;

my @list = glob('*.pl');

foreach my $f(@list){
    open T, $f;
    my $ligne = <T>;    
    if($ligne =~ /#! \/.*perl.*/){
      chmod oct(755), $f unless (-x $f);
    }
    close T;
}
