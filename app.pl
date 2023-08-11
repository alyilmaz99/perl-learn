#!/usr/bin/perl

$hello = "hi world";
my $localVariable = "local";
our $globalVariable = "Global";

print "$hello, perl test \n";


$nums = 1999;

@arrayNumbers = (10,20,30,40);
@arrayNumbers[1];

%friends =("key-pair variable", 67, "key-pair example 2", 79);
print %friends{'key-pair variable'};
print "\n";

if(10 > 5){
    print "hi,hi \n";
}

unless(2<10){
    print "unlesss! \n";
}

print "one line sta" if 5>10;

$result = (5 >10 ) ? 'hi' : 'hello s';

sub FunctionExample{
    print "this is functionn \n";
    my($n1,$n2) = @_;
    print "function output: $n1 + $n2";


}

FunctionExample(10,20);
print "\n";
#binding operator

if($text =~ /cool/){


}

@counter1 = (1..10);
$counter[20]++;
$len = @counter;
print "len is: $len";
print "\n";

$var = 1;

do {
    print "var = $var \n";
    $var++;
}while($var <10);

print"end \n";
$while = 0;

while($while < 5){
    print "while : $while\n";
    $while++;

}

#for loops

for($i = 0 ; $i < 5 ;$i =$i+ 1 ){
    print "value of i: $i\n";
}

@names = ('ali','yilmaz','123','names','another names', 'last');

$size = @names;

for($i = 0 ; $i < $size ; $i = $i +1){
    print "name: $names[$i] \n";
}

#until 

$untilTest = 5;

until($untilTest > 10){
    print "until : $untilTest \n";
    $untilTest++;
}

#foreach

foreach $names (@names){
    print "foreach names : $names\n";
}