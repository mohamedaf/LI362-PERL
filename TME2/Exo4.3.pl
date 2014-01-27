#! /usr/bin/perl -lw

$df = `df`;

@lines = split /\n/, $df;

foreach $i (@lines){
	if($i =~ /\s(\d+)%/ && $1>90){
        print "\033[31m";
		print $i;
        print "\033[39m";
	}
	else{
		print $i;
	}
}
