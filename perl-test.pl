use strict;

use FindBin qw($Bin);
use lib "$Bin/lib";

use Test::Simple tests => 3;


ok checker(5==10);
ok checker(10>2);
ok checker(4 !=5);

my $firstNumber = -1;
my $secondNumber = -2;
my $res = sum($firstNumber,$secondNumber);

ok $res == -2 , "-1-1==-2\n";

sub checker{
    my ($true) = @_;
    if($true) {
        print "test passed\n";
    }else{
        print "test not passed!\n";
    }
}


sub sum{
    (our $x,our $y) = @_;
    my $res = $x + $y;
    return $res;
}