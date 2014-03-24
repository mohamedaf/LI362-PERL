#! /usr/bin/perl -l

use Net::DNS;

my $res = Net::DNS::Resolver->new(config_file => '/etc/resolv.conf');

foreach $host (@ARGV){
    $q = $res -> search($host);  #envoi requette

    if($q){
      print "OK";
    }
    else{
      print "KO";
    }
}
