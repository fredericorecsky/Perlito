# Do not edit this file - Generated by Perlito5 9.0
use v6;
{
    package main {
        sub main::foo {
            if @_[0] == 1 {
                1
            }
            elsif @_[0] == 2 {
                2
            }
            elsif @_[0] == 3 {
                3
            }
            else {
                4
            }
        }
        print('1..4' ~ chr(10));
        if ($x = &foo(1)) == 1 {
            print('ok 1' ~ chr(10))
        }
        else {
            print('not ok 1 ' ~ chr(39) ~ $x ~ chr(39) ~ chr(10))
        }
        if ($x = &foo(2)) == 2 {
            print('ok 2' ~ chr(10))
        }
        else {
            print('not ok 2 ' ~ chr(39) ~ $x ~ chr(39) ~ chr(10))
        }
        if ($x = &foo(3)) == 3 {
            print('ok 3' ~ chr(10))
        }
        else {
            print('not ok 3 ' ~ chr(39) ~ $x ~ chr(39) ~ chr(10))
        }
        if ($x = &foo(4)) == 4 {
            print('ok 4' ~ chr(10))
        }
        else {
            print('not ok 4 ' ~ chr(39) ~ $x ~ chr(39) ~ chr(10))
        }
    }
}

