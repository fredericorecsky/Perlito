# Do not edit this file - Generated by Perlito5 9.0
use v6;
{
    package main {
        print('1..2' ~ chr(10));
        $x = 'test';
        if $x eq $x {
            print('ok 1' ~ chr(10))
        }
        else {
            print('not ok 1' ~ chr(10))
        }
        if $x ne $x {
            print('not ok 2' ~ chr(10))
        }
        else {
            print('ok 2' ~ chr(10))
        }
    }
}

