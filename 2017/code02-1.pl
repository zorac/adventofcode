#!/usr/bin/perl -w

use strict;

my $total = 0;

while (defined(my $in = <>)) {
    my @in = split(/\s+/, $in);
    my ($min, $max);

    foreach my $i (@in) {
        $min = $i if (!defined($min) || ($i < $min));
        $max = $i if (!defined($max) || ($i > $max));
    }

    $total += $max - $min;
}

print "$total\n";
