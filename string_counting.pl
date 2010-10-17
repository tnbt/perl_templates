#!/usr/bin/perl -w

use strict;

my %count;
my $wd;
my $w;

while (<>) {
    chop;
    tr/A-Z/a-z/;
    tr/.,:;!?"(){}//d;
    foreach $wd (split) {
        $count{$wd}++;   
    }       
}        

foreach $w (keys %count) {
    print "$count{$w} : $w\n";
}


