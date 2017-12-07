#!/usr/bin/perl -w

my $in = <>;
chomp($in);
my $sq = 0;

while ((($sq + 1) ** 2) < $in) {
    $sq++;
}

my $rem = $in - ($sq ** 2);

print "sq:$sq rem:$rem\n";

if (($sq % 2) == 0) {
    $rem--;
} else {
    $sq++;
}

print "sq:$sq rem:$rem\n";

$rem -= $sq if ($rem > $sq);

print "sq:$sq rem:$rem\n";

print(($sq / 2) + abs($rem - ($sq / 2)));
print "\n";
