#! /usr/bin/perl 

use strict;

while ( $ARGV[0] =~ /(\d+)(\D)/g ) {
    print $2 foreach (1..$1);
}
