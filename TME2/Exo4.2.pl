#!/usr/bin/perl -l

$nom = `whoami`;
$machine = `hostname`;
chomp $nom;
chomp $machine;
print "\033[31m";
print "Bonjour $nom bienvenue sur $machine";
print "\033[39m";