#!/usr/bin/perl -w

my $in = <>;
chomp($in);
my @in = split(//, $in);
my $len = @in / 2;
my @a = @in[0 .. ($len - 1)];
my @b = @in[$len .. $#in];
my $total = 0;

for (my $i = 0; $i < $len; $i++) {
    $total += (2 * $a[$i]) if ($a[$i] == $b[$i]);
}

print "$total\n";
