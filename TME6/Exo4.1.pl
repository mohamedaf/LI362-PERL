#! /usr/bin/perl -l

@t = $ARGV[0] =~ m/((\w)\2*)/g;

@comp;
$i=3;

foreach $r (@t){
    if($i%2){
      push @comp, length ($r);
    }
    else{
      push @comp, $r;
    }
    $i = $i + 1;
}

print @comp;
