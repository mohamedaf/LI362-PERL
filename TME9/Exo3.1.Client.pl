#! /usr/bin/perl -l

use strict;
use IO::Socket;

my ($host,$port) = shift;

my $Client = IO::Socket::INET -> new(
                                     Proto => "tcp",
                                     PeerAddr => $host,
                                     PeerPort => $port);

while(my $l = <STDIN>){
    print $Client,$l;
    $l = <$Client>;
    print $l;
}
