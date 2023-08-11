use strict;
use warnings;
use List::Util qw[min max];

my %leaders;
my @price = ();  

open(my $fh, "<", "leaders.rpt") or die "Dosya acilamadi: $!";

while (my $line = <$fh>) {
    chomp($line);
    $line =~ s/\|//g;
    $line =~ s/---//g;
    

    my @data = split(" ", $line);
    if ($data[-1] ne "price") {
        push(@price, $data[-1]);
        my $name = $data[1];
        $leaders{$data[-1]} = $name;
    }
}
close($fh);

print("price: @price \n");

my $maxprice = max @price;
my $minprice = min @price;
print("min price: $minprice \n");
print("max price: $maxprice \n");
print("$leaders{$maxprice}\n");
