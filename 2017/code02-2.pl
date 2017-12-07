#!/usr/bin/perl -w

use strict;

my $total = 0;

while (defined(my $in = <>)) {
    my @in = split(/\s+/, $in);
    my $len = @in;

    for (my $i = 0; $i < $len; $i++) {
        for (my $j = ($i + 1); $j < $len; $j++) {
            my $a = $in[$i];
            my $b = $in[$j];
            my $v = ($a > $b) ? ($a / $b) : ($b / $a);

            $total += $v if ($v == int($v));
        }
    }
}

print "$total\n";
