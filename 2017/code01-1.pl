#!/usr/bin/perl -w

my $in = <>;
chomp($in);
my @in = split(//, $in);
my $last = $in[$#in];
my $total = 0;

foreach my $i (@in) {
    $total += $i if ($i == $last);
    $last = $i;
}

print "$total\n";
