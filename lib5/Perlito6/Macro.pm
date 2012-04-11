# Do not edit this file - Generated by Perlito6 9.0
use v5;
use utf8;
use strict;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito6::Perl5::Runtime;
use Perlito6::Perl5::Prelude;
our $MATCH = Perlito6::Match->new();
{
package GLOBAL;
    sub new { shift; bless { @_ }, "GLOBAL" }

    # use v6 
;
    {
    package Lit::Array;
        sub new { shift; bless { @_ }, "Lit::Array" }
        sub expand_interpolation {
            my $self = $_[0];
            ((my  $needs_interpolation) = 0);
            (my  $List_items = bless [], 'ARRAY');
            for my $item ( @{(defined $self->{array1} ? $self->{array1} : ($self->{array1} ||= bless([], 'ARRAY')))} ) {
                if ((Main::isa($item, 'Apply') && ((($item->code() eq 'circumfix:<( )>') || ($item->code() eq 'list:<,>'))))) {
                    for my $arg ( @{(($item->arguments()))} ) {
                        push( @{$List_items}, $arg )
                    }
                }
                else {
                    push( @{$List_items}, $item )
                }
            };
            for my $item ( @{$List_items} ) {
                if (((Main::isa($item, 'Var') && ($item->sigil() eq chr(64))) || (Main::isa($item, 'Apply') && ((($item->code() eq 'prefix:<' . chr(64) . '>') || ($item->code() eq 'infix:<..>')))))) {
                    ($needs_interpolation = 1)
                }
            };
            if (($needs_interpolation && (scalar( @{$List_items} ) == 1))) {
                return scalar ($List_items->[0])
            };
            (my  $List_s = bless [], 'ARRAY');
            for my $item ( @{$List_items} ) {
                if (((Main::isa($item, 'Var') && ($item->sigil() eq chr(64))) || (Main::isa($item, 'Apply') && ((($item->code() eq 'prefix:<' . chr(64) . '>') || ($item->code() eq 'infix:<..>')))))) {
                    push( @{$List_s}, Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Var->new(('name' => 'v'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => '')) );
    push( @{$List_a}, $item );
    $List_a
}), ('code' => 'infix:<' . chr(61) . '>'), ('namespace' => '')) );
                    push( @{$List_s}, For->new(('body' => Lit::Block->new(('sig' => Var->new(('name' => 'x'), ('namespace' => ''), ('sigil' => chr(36)), ('twigil' => ''))), ('stmts' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Call->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Index->new(('index_exp' => Var->new(('name' => 'x'), ('namespace' => ''), ('sigil' => chr(36)), ('twigil' => ''))), ('obj' => Var->new(('name' => 'v'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => '')))) );
    $List_a
}), ('hyper' => ''), ('invocant' => Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => ''))), ('method' => 'push')) );
    $List_a
}))), ('cond' => Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Val::Int->new(('int' => 0)) );
    push( @{$List_a}, Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Call->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    $List_a
}), ('hyper' => ''), ('invocant' => Var->new(('name' => 'v'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => ''))), ('method' => 'elems')) );
    push( @{$List_a}, Val::Int->new(('int' => 1)) );
    $List_a
}), ('code' => 'infix:<->'), ('namespace' => '')) );
    $List_a
}), ('code' => 'circumfix:<( )>'), ('namespace' => '')) );
    $List_a
}), ('code' => 'infix:<..>'), ('namespace' => ''))), ('topic' => undef())) )
                }
                else {
                    push( @{$List_s}, Call->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, $item );
    $List_a
}), ('hyper' => ''), ('invocant' => Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => ''))), ('method' => 'push')) )
                }
            };
            return scalar (Do->new(('block' => Lit::Block->new(('sig' => undef()), ('stmts' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Decl->new(('decl' => 'my'), ('type' => ''), ('var' => Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => '')))) );
    push( @{$List_a}, Decl->new(('decl' => 'my'), ('type' => ''), ('var' => Var->new(('name' => 'v'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => '')))) );
    ($List_v = $List_s);
    for my $x ( @{(bless [0 .. ((scalar( @{$List_v} ) - 1))], 'ARRAY')} ) {
        push( @{$List_a}, $List_v->[$x] )
    };
    push( @{$List_a}, Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(64)), ('twigil' => '')) );
    $List_a
})))))
        }
    }

;
    {
    package Lit::Hash;
        sub new { shift; bless { @_ }, "Lit::Hash" }
        sub expand_interpolation {
            my $self = $_[0];
            (my  $List_items = bless [], 'ARRAY');
            for my $item ( @{(defined $self->{hash1} ? $self->{hash1} : ($self->{hash1} ||= bless([], 'ARRAY')))} ) {
                if ((Main::isa($item, 'Apply') && ((($item->code() eq 'circumfix:<( )>') || ($item->code() eq 'list:<,>'))))) {
                    for my $arg ( @{(($item->arguments()))} ) {
                        push( @{$List_items}, $arg )
                    }
                }
                else {
                    push( @{$List_items}, $item )
                }
            };
            (my  $List_s = bless [], 'ARRAY');
            for my $item ( @{$List_items} ) {
                if ((Main::isa($item, 'Apply') && ($item->code() eq 'infix:<' . chr(61) . '>>'))) {
                    push( @{$List_s}, Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Lookup->new(('index_exp' => $item->arguments()->[0]), ('obj' => Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(37)), ('twigil' => '')))) );
    push( @{$List_a}, $item->arguments()->[1] );
    $List_a
}), ('code' => 'infix:<' . chr(61) . '>'), ('namespace' => '')) )
                }
                else {
                    if (((Main::isa($item, 'Var') && ($item->sigil() eq chr(37))) || (Main::isa($item, 'Apply') && ($item->code() eq 'prefix:<' . chr(37) . '>')))) {
                        push( @{$List_s}, For->new(('body' => Lit::Block->new(('sig' => Var->new(('name' => 'p'), ('namespace' => ''), ('sigil' => chr(36)), ('twigil' => ''))), ('stmts' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Lookup->new(('index_exp' => Call->new(('arguments' => undef()), ('hyper' => ''), ('invocant' => Var->new(('name' => 'p'), ('namespace' => ''), ('sigil' => chr(36)), ('twigil' => ''))), ('method' => 'key'))), ('obj' => Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(37)), ('twigil' => '')))) );
    push( @{$List_a}, Call->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    $List_a
}), ('hyper' => ''), ('invocant' => Var->new(('name' => 'p'), ('namespace' => ''), ('sigil' => chr(36)), ('twigil' => ''))), ('method' => 'value')) );
    $List_a
}), ('code' => 'infix:<' . chr(61) . '>'), ('namespace' => '')) );
    $List_a
}))), ('cond' => Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Apply->new(('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Call->new(('arguments' => undef()), ('hyper' => ''), ('invocant' => $item), ('method' => 'pairs')) );
    $List_a
}), ('code' => 'circumfix:<( )>'), ('namespace' => '')) );
    $List_a
}), ('code' => 'prefix:<' . chr(64) . '>'), ('namespace' => ''))), ('topic' => undef())) )
                    }
                    else {
                        die('Error in hash composer: ', Main::perl($item, ))
                    }
                }
            };
            return scalar (Do->new(('block' => Lit::Block->new(('sig' => undef()), ('stmts' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, Decl->new(('decl' => 'my'), ('type' => ''), ('var' => Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(37)), ('twigil' => '')))) );
    ($List_v = $List_s);
    for my $x ( @{(bless [0 .. ((scalar( @{$List_v} ) - 1))], 'ARRAY')} ) {
        push( @{$List_a}, $List_v->[$x] )
    };
    push( @{$List_a}, Var->new(('name' => 'a'), ('namespace' => ''), ('sigil' => chr(37)), ('twigil' => '')) );
    $List_a
})))))
        }
    }

;
    {
    package Apply;
        sub new { shift; bless { @_ }, "Apply" }
        ((my  $Hash_op = bless {}, 'HASH') = do {
    (my  $Hash_a = bless {}, 'HASH');
    ($Hash_a->{'infix:<+' . chr(61) . '>'} = 'infix:<+>');
    ($Hash_a->{'infix:<-' . chr(61) . '>'} = 'infix:<->');
    ($Hash_a->{'infix:<*' . chr(61) . '>'} = 'infix:<*>');
    ($Hash_a->{'infix:<' . chr(47) . chr(61) . '>'} = 'infix:<' . chr(47) . '>');
    ($Hash_a->{'infix:<' . chr(124) . chr(124) . chr(61) . '>'} = 'infix:<' . chr(124) . chr(124) . '>');
    ($Hash_a->{'infix:<' . chr(38) . chr(38) . chr(61) . '>'} = 'infix:<' . chr(38) . chr(38) . '>');
    ($Hash_a->{'infix:<' . chr(124) . chr(61) . '>'} = 'infix:<' . chr(124) . '>');
    ($Hash_a->{'infix:<' . chr(38) . chr(61) . '>'} = 'infix:<' . chr(38) . '>');
    ($Hash_a->{'infix:<' . chr(47) . chr(47) . chr(61) . '>'} = 'infix:<' . chr(47) . chr(47) . '>');
    ($Hash_a->{'infix:<' . chr(126) . chr(61) . '>'} = 'list:<' . chr(126) . '>');
    $Hash_a
});
        sub op_assign {
            my $self = $_[0];
            ((my  $code) = $self->{code});
            if (Main::isa($code, 'Str')) {

            }
            else {
                return scalar (0)
            };
            if (exists($Hash_op->{$code})) {
                return scalar (Apply->new(('code' => 'infix:<' . chr(61) . '>'), ('arguments' => do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, (defined $self->{arguments} ? $self->{arguments} : ($self->{arguments} ||= bless([], 'ARRAY')))->[0] );
    push( @{$List_a}, Apply->new(('code' => $Hash_op->{$code}), ('arguments' => (defined $self->{arguments} ? $self->{arguments} : ($self->{arguments} ||= bless([], 'ARRAY'))))) );
    $List_a
})))
            };
            return scalar (0)
        }
    }

;
    {
    package Do;
        sub new { shift; bless { @_ }, "Do" }
        sub simplify {
            my $self = $_[0];
            (my  $block);
            if (Main::isa($self->{block}, 'Lit::Block')) {
                ($block = $self->{block}->stmts())
            }
            else {
                ($block = do {
    (my  $List_a = bless [], 'ARRAY');
    (my  $List_v = bless [], 'ARRAY');
    push( @{$List_a}, $self->{block} );
    $List_a
})
            };
            if ((scalar( @{$block} ) == 1)) {
                ((my  $stmt) = $block->[0]);
                if ((Main::isa($stmt, 'Apply') && ($stmt->code() eq 'circumfix:<( )>'))) {
                    ((my  $args) = $stmt->arguments());
                    return scalar (Do->new(('block' => $args->[0]))->simplify())
                };
                if (Main::isa($stmt, 'Do')) {
                    return scalar ($stmt->simplify())
                }
            };
            return scalar (Do->new(('block' => $block)))
        }
    }


}

1;
