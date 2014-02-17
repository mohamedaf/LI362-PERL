#! /usr/bin/perl -l

use strict;

$/ = undef;

if(scalar @ARGV > 1){
  my @tab;
  my $fic = shift;
  open my $F, $fic;

  while(<$F>){
    push @tab ,$_;
  }

  close $F;

  print "begin 755 $ARGV[0]";
  print pack "u", @tab;
  print "`";
  print "";
  print "end";
}
else {
  my $fic = <STDIN>;

  print "begin 755 $ARGV[0]";
  print pack "u", $fic;
  print "`";
  print "";
  print "end";
}


