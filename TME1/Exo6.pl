#! /usr/bin/perl -nl

#use strict;

our($torchon,$serviette);

if($_ =~ 'torchon'){
	$torchon++;	
}
elsif($_ =~ 'serviette'){
	$serviette++;	
} 
else {die "Vous avez rentré une chaine incorrecte !!"}

END{print "torchon = $torchon, serviette = $serviette"}
