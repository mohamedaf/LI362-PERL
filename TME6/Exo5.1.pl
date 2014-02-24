#! /usr/bin/perl -wln

use strict;
use Data::Dumper;

our (%donnees,$section);

if(/^\[(.+)\]$/){
    $section = $1;
    $donnees{$section} = ();
}
elsif(/^([\w.]+)\s*=\s*([\w.]+)$/){
    $donnees{$section}{$1} = $2;
}

END{ print Dumper (\%donnees);}
