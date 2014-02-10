#! /usr/bin/perl -nal

sub AUTOLOAD{
    $AUTOLOAD =~ s/.*:://;
    system($AUTOLOAD,@_);
}

foreach (@F){
    if($_ =~ /.+=.+/){
	$ev = eval $_;
    }
    else{
	$nom = $_;
	last;
    }
}

$nom $ev;

#marche pas
