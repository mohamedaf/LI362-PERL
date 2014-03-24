#! /usr/bin/perl -l

use strict;
use IO::Socket;

my $Server = IO::Socket::INET -> new(
                                     Proto => "tcp",
                                     PeerAddr => "localhost",
                                     PeerPort => 12345,
                                     Listen => 1);

my $Client = $Server -> accept;

while(my $l = <$Client>){
    print $Client,$l;
}

