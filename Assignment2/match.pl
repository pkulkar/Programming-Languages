#!/usr/bin/perl
use strict;
use warnings;
open FILE, "input.txt" or die $!;
while(my $name = <FILE>)
{
if($name =~m/or/)
{
chomp $name;
print("$name contains or \n");
}

my @vowel = qw (a e i o u);
foreach my $string ($name) {
    my $count = 0;
	my $i = 0;
    while($i <= (length $string) - 1)
	{
	$i++;
        my $word = substr($string, $i, 1 );
        $count++ if ( grep /\b$word\b/, @vowel );
    }
	if ( $count >= 2 ){
    chomp $name;
print ("$name contains at least two vowels letters \n");
}

if($name !~m/^h/)
{
chomp $name;
print("$name does not start with h \n");
}

if($name =~m/.e/ && $name =~m/y\b/)
{
chomp $name;
print("$name has e as the second symbol and ends with y\n");
}

if($name =~m/[0-9]/ && $name =~m/[a-z]/)
{
chomp $name;
print("$name contains both letters and digits \n");
}
}
}
close(FILE);
