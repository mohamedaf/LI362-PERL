#! /usr/bin/perl -ls

use strict;
our($number);
my(@T,$l,$val);

$/="\n%\n";

foreach(@ARGV){
  open F, $_;

  while($l = <F>){
    chomp $l;
    push @T, $l;
  }
  
  close F;
}

for(my $i = 0; $i<$number; $i++){
   $val = rand @T-1;
   print "@T";
   print "-----------------";
   print $T[$val];
   delete $T[$val];
   print "-----------------";
  #@T = grep '/[^$val]+/' ,@T;
   print "@T";
}



