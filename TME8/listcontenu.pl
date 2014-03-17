#! /usr/bin/perl -l

use strict;

my @tmp;
my @liste = ();
my $contenu;

foreach my $f (@ARGV){
    `ar x $ARGV[0] data.tar.gz`;   #extraire le fichier data.tar.gz de l'archive .deb

    $contenu = `tar zt < data.tar.gz`;
     `rm -f data.tar.gz`;

    @tmp = split/\n/,$contenu;
    @liste = (@liste,@tmp);

    $, = "\n";
    print sort @liste;
}




