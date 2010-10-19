#!/usr/bin/perl -w

use strict;

my %count;
my $word;

while (<>) {
   foreach my $word (split) {
    	tr/A-Z/a-z/;
	tr/;.!?{}[]\(\)\"//;
   	$count{$word}++;
	}
}

sub asc {
   $count{$a} <=> $count{$b};
   }

foreach my $key (sort asc (keys (%count))) {
	print "$count{$key}: $key\n";
	}

