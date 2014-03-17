#! /usr/bin/perl -l

use strict;
use Digest::MD5;

foreach my $rep (@ARGV){
    opendir (my $rep_fh, $rep) or die "impossible d'ouvrir le repertoire $rep";
    my @contenu = readdir($rep_fh);
    close($rep_fh);

    for (my $i=0; $i<(scalar @contenu); $i++){
      for (my $j=$i; $j<(scalar @contenu); $j++){
        if($contenu[$i] !~ /^\./ && $contenu[$j] !~ /^\./){
	        next if($contenu[$i] =~ $contenu[$j]);

          my $r1=$1 if(`md5 "$rep/$contenu[$i]"` =~ /MD5.+=\s(.+)/);
          my $r2=$1 if(`md5 "$rep/$contenu[$j]"` =~ /MD5.+=\s(.+)/);
          
          print "$rep/$contenu[$i], $rep/$contenu[$j]: meme contenu" if($r1 == $r2);
        }
      }
    }
}
