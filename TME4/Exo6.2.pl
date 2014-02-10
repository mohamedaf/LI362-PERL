#! /usr/bin/perl -l

use strict;

my %mots = ();
my @tmp = ();

open F, "$ARGV[0]" or die "Impossible d'ouvrir le fichier !";

while(my $l = <F>){
    chomp $l;
    @tmp = split // ,$l;
    push @{$mots{$tmp[0]}} ,$l;
}

foreach my $line(keys %mots){
    print "$line : @{$mots{$line}}";
}

close F;

