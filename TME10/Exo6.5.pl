#! /usr/bin/perl -l

use strict;

sub calcul_next_gen{
    my $self = @_;
    my $plateau_new;

    for(my $i=0; $self -> {long}; $i++){
	for(my $j=0; $self -> {larg}; $j++){
	    #mettre a jour la case
	    my $c = $plateau_new -> [$i][$j] = F($self -> {plateau},$i,$j);
	    $self -> {boutons} -> [$i][$j] -> configure(-text => $c -> get());
	}
    }

}

sub F{
    my ($plateau_old,$i,$j) = @_;
    #etc ... la fleme
}
