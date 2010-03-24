# Do not edit this file - Generated by MiniPerl6 4.1
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
our $MATCH = MiniPerl6::Match->new();
{
package CompUnit;
sub new { shift; bless { @_ }, "CompUnit" }
sub name { $_[0]->{name} };
sub attributes { $_[0]->{attributes} };
sub methods { $_[0]->{methods} };
sub body { $_[0]->{body} };
sub emit { my $self = $_[0]; 'class ' . $self->{name} . ' { ' . Main::join([ map { $_->emit() } @{ $self->{body} } ], '; ') . '} ' }
}

{
package Val::Int;
sub new { shift; bless { @_ }, "Val::Int" }
sub int { $_[0]->{int} };
sub emit { my $self = $_[0]; $self->{int} }
}

{
package Val::Bit;
sub new { shift; bless { @_ }, "Val::Bit" }
sub bit { $_[0]->{bit} };
sub emit { my $self = $_[0]; $self->{bit} }
}

{
package Val::Num;
sub new { shift; bless { @_ }, "Val::Num" }
sub num { $_[0]->{num} };
sub emit { my $self = $_[0]; $self->{num} }
}

{
package Val::Buf;
sub new { shift; bless { @_ }, "Val::Buf" }
sub buf { $_[0]->{buf} };
sub emit { my $self = $_[0]; '\'' . $self->{buf} . '\'' }
}

{
package Val::Undef;
sub new { shift; bless { @_ }, "Val::Undef" }
sub emit { my $self = $_[0]; '(undef)' }
}

{
package Val::Object;
sub new { shift; bless { @_ }, "Val::Object" }
sub class { $_[0]->{class} };
sub fields { $_[0]->{fields} };
sub emit { my $self = $_[0]; Main::perl($self->{class}, ) . '.new(' . Main::perl($self->{fields}, ) . ')' }
}

{
package Lit::Seq;
sub new { shift; bless { @_ }, "Lit::Seq" }
sub seq { $_[0]->{seq} };
sub emit { my $self = $_[0]; '(' . Main::join([ map { $_->emit() } @{ $self->{seq} } ], ', ') . ')' }
}

{
package Lit::Array;
sub new { shift; bless { @_ }, "Lit::Array" }
sub array1 { $_[0]->{array1} };
sub emit { my $self = $_[0]; '[' . Main::join([ map { $_->emit() } @{ $self->{array1} } ], ', ') . ']' }
}

{
package Lit::Hash;
sub new { shift; bless { @_ }, "Lit::Hash" }
sub hash1 { $_[0]->{hash1} };
sub emit { my $self = $_[0]; (my  $fields = $self->{hash1}); (my  $str = ''); for my $field ( @{$fields} ) { ($str = $str . $field->[0]->emit() . ' => ' . $field->[1]->emit() . ',') }; '{ ' . $str . ' }' }
}

{
package Lit::Code;
sub new { shift; bless { @_ }, "Lit::Code" }
1
}

{
package Lit::Object;
sub new { shift; bless { @_ }, "Lit::Object" }
sub class { $_[0]->{class} };
sub fields { $_[0]->{fields} };
sub emit { my $self = $_[0]; (my  $fields = $self->{fields}); (my  $str = ''); for my $field ( @{$fields} ) { ($str = $str . $field->[0]->emit() . ' => ' . $field->[1]->emit() . ',') }; $self->{class} . '.new( ' . $str . ' )' }
}

{
package Index;
sub new { shift; bless { @_ }, "Index" }
sub obj { $_[0]->{obj} };
sub index_exp { $_[0]->{index_exp} };
sub emit { my $self = $_[0]; $self->{obj}->emit() . '.[' . $self->{index_exp}->emit() . ']' }
}

{
package Lookup;
sub new { shift; bless { @_ }, "Lookup" }
sub obj { $_[0]->{obj} };
sub index_exp { $_[0]->{index_exp} };
sub emit { my $self = $_[0]; $self->{obj}->emit() . '.{' . $self->{index_exp}->emit() . '}' }
}

{
package Var;
sub new { shift; bless { @_ }, "Var" }
sub sigil { $_[0]->{sigil} };
sub twigil { $_[0]->{twigil} };
sub name { $_[0]->{name} };
sub emit { my $self = $_[0]; if (($self->{name} eq '/')) { return('$MATCH') } else {  }; return($self->{sigil} . $self->{twigil} . $self->{name}) };
sub name { my $self = $_[0]; $self->{name} }
}

{
package Bind;
sub new { shift; bless { @_ }, "Bind" }
sub parameters { $_[0]->{parameters} };
sub arguments { $_[0]->{arguments} };
sub emit { my $self = $_[0]; if (Main::isa($self->{parameters}, 'Lit::Array')) { (my  $a = $self->{parameters}->array());(my  $str = 'do { ');(my  $i = 0);for my $var ( @{$a} ) { (my  $bind = Bind->new( 'parameters' => $var,'arguments' => Index->new( 'obj' => $self->{arguments},'index_exp' => Val::Int->new( 'int' => $i, ), ), ));($str = $str . ' ' . $bind->emit() . '; ');($i = ($i + 1)) };return($str . $self->{parameters}->emit() . ' }') } else {  }; if (Main::isa($self->{parameters}, 'Lit::Hash')) { (my  $a = $self->{parameters}->hash());(my  $b = $self->{arguments}->hash());(my  $str = 'do { ');(my  $i = 0);my  $arg;for my $var ( @{$a} ) { ($arg = Val::Undef->new(  ));for my $var2 ( @{$b} ) { if (($var2->[0]->buf() eq $var->[0]->buf())) { ($arg = $var2->[1]) } else {  } };(my  $bind = Bind->new( 'parameters' => $var->[1],'arguments' => $arg, ));($str = $str . ' ' . $bind->emit() . '; ');($i = ($i + 1)) };return($str . $self->{parameters}->emit() . ' }') } else {  }; if (Main::isa($self->{parameters}, 'Lit::Object')) { (my  $class = $self->{parameters}->class());(my  $a = $self->{parameters}->fields());(my  $b = $self->{arguments});(my  $str = 'do { ');(my  $i = 0);my  $arg;for my $var ( @{$a} ) { (my  $bind = Bind->new( 'parameters' => $var->[1],'arguments' => Call->new( 'invocant' => $b,'method' => $var->[0]->buf(),'arguments' => [],'hyper' => 0, ), ));($str = $str . ' ' . $bind->emit() . '; ');($i = ($i + 1)) };return($str . $self->{parameters}->emit() . ' }') } else {  }; $self->{parameters}->emit() . ' = ' . $self->{arguments}->emit() }
}

{
package Proto;
sub new { shift; bless { @_ }, "Proto" }
sub name { $_[0]->{name} };
sub emit { my $self = $_[0]; ("" . $self->{name}) }
}

{
package Call;
sub new { shift; bless { @_ }, "Call" }
sub invocant { $_[0]->{invocant} };
sub hyper { $_[0]->{hyper} };
sub method { $_[0]->{method} };
sub arguments { $_[0]->{arguments} };
sub emit { my $self = $_[0]; (my  $invocant = $self->{invocant}->emit()); if (($invocant eq 'self')) { ($invocant = 'self') } else {  }; (my  $meth = $self->{method}); if (($meth eq 'postcircumfix:<( )>')) { ($meth = '') } else {  }; (my  $call = '.' . $meth . '(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ', ') . ')'); if ($self->{hyper}) { $invocant . '>>' . $call } else { $invocant . $call } }
}

{
package Apply;
sub new { shift; bless { @_ }, "Apply" }
sub code { $_[0]->{code} };
sub arguments { $_[0]->{arguments} };
sub emit { my $self = $_[0]; (my  $code = $self->{code}); if (Main::isa($code, 'Str')) {  } else { return('(' . $self->{code}->emit() . ').(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ', ') . ')') }; if (($code eq 'self')) { return('self') } else {  }; if (($code eq 'say')) { return('say(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ', ') . ')') } else {  }; if (($code eq 'print')) { return('print(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ', ') . ')') } else {  }; if (($code eq 'array')) { return('@(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ') . ')') } else {  }; if (($code eq 'prefix:<~>')) { return('~(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ') . ')') } else {  }; if (($code eq 'prefix:<!>')) { return('!(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ') . ')') } else {  }; if (($code eq 'prefix:<?>')) { return('?(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ') . ')') } else {  }; if (($code eq 'prefix:<$>')) { return('$(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ') . ')') } else {  }; if (($code eq 'prefix:<@>')) { return('@(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ') . ')') } else {  }; if (($code eq 'prefix:<%>')) { return('%(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ') . ')') } else {  }; if (($code eq 'infix:<~>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ~ ') . ')') } else {  }; if (($code eq 'infix:<+>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' + ') . ')') } else {  }; if (($code eq 'infix:<->')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' - ') . ')') } else {  }; if (($code eq 'infix:<&&>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' && ') . ')') } else {  }; if (($code eq 'infix:<||>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' || ') . ')') } else {  }; if (($code eq 'infix:<eq>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' eq ') . ')') } else {  }; if (($code eq 'infix:<ne>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' ne ') . ')') } else {  }; if (($code eq 'infix:<==>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' == ') . ')') } else {  }; if (($code eq 'infix:<!=>')) { return('(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ' != ') . ')') } else {  }; if (($code eq 'ternary:<?? !!>')) { return('(' . $self->{arguments}->[0]->emit() . ' ?? ' . $self->{arguments}->[1]->emit() . ' !! ' . $self->{arguments}->[2]->emit() . ')') } else {  }; $self->{code} . '(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], ', ') . ')' }
}

{
package Return;
sub new { shift; bless { @_ }, "Return" }
sub result { $_[0]->{result} };
sub emit { my $self = $_[0]; 'return(' . $self->{result}->emit() . ')' }
}

{
package If;
sub new { shift; bless { @_ }, "If" }
sub cond { $_[0]->{cond} };
sub body { $_[0]->{body} };
sub otherwise { $_[0]->{otherwise} };
sub emit { my $self = $_[0]; 'do { if (' . $self->{cond}->emit() . ') { ' . Main::join([ map { $_->emit() } @{ $self->{body} } ], ';') . ' } else { ' . Main::join([ map { $_->emit() } @{ $self->{otherwise} } ], ';') . ' } }' }
}

{
package For;
sub new { shift; bless { @_ }, "For" }
sub cond { $_[0]->{cond} };
sub body { $_[0]->{body} };
sub topic { $_[0]->{topic} };
sub emit { my $self = $_[0]; (my  $cond = $self->{cond}); if ((Main::isa($cond, 'Var') && ($cond->sigil() eq '@'))) { ($cond = Apply->new( 'code' => 'prefix:<@>','arguments' => [$cond], )) } else {  }; 'do { for ( ' . $cond->emit() . ' ) -> ' . $self->{topic}->emit() . ' { ' . Main::join([ map { $_->emit() } @{ $self->{body} } ], ';') . ' } }' }
}

{
package Decl;
sub new { shift; bless { @_ }, "Decl" }
sub decl { $_[0]->{decl} };
sub type { $_[0]->{type} };
sub var { $_[0]->{var} };
sub emit { my $self = $_[0]; (my  $decl = $self->{decl}); (my  $name = $self->{var}->name()); (($decl eq 'has') ? 'has $.' . $self->{var}->name() : $self->{decl} . ' ' . $self->{type} . ' ' . $self->{var}->emit()) }
}

{
package Sig;
sub new { shift; bless { @_ }, "Sig" }
sub invocant { $_[0]->{invocant} };
sub positional { $_[0]->{positional} };
sub named { $_[0]->{named} };
sub emit { my $self = $_[0]; ' print \'Signature - TODO\'; die \'Signature - TODO\'; ' };
sub invocant { my $self = $_[0]; $self->{invocant} };
sub positional { my $self = $_[0]; $self->{positional} }
}

{
package Method;
sub new { shift; bless { @_ }, "Method" }
sub name { $_[0]->{name} };
sub sig { $_[0]->{sig} };
sub block { $_[0]->{block} };
sub emit { my $self = $_[0]; (my  $sig = $self->{sig}); (my  $invocant = $sig->invocant()); (my  $pos = $sig->positional()); (my  $str = ''); (my  $pos = $sig->positional()); for my $field ( @{$pos} ) { ($str = $str . 'my ' . $field->emit() . '; ') }; (my  $bind = Bind->new( 'parameters' => Lit::Array->new( 'array' => $sig->positional(), ),'arguments' => Var->new( 'sigil' => '@','twigil' => '','name' => '_', ), )); ($str = $str . $bind->emit() . '; '); 'method ' . $self->{name} . ' { ' . $str . Main::join([ map { $_->emit() } @{ $self->{block} } ], '; ') . ' }' }
}

{
package Sub;
sub new { shift; bless { @_ }, "Sub" }
sub name { $_[0]->{name} };
sub sig { $_[0]->{sig} };
sub block { $_[0]->{block} };
sub emit { my $self = $_[0]; (my  $sig = $self->{sig}); (my  $pos = $sig->positional()); (my  $str = 'my $List__ = \\@_; '); (my  $pos = $sig->positional()); for my $field ( @{$pos} ) { ($str = $str . 'my ' . $field->emit() . '; ') }; (my  $bind = Bind->new( 'parameters' => Lit::Array->new( 'array' => $sig->positional(), ),'arguments' => Var->new( 'sigil' => '@','twigil' => '','name' => '_', ), )); ($str = $str . $bind->emit() . '; '); 'sub ' . $self->{name} . ' { ' . $str . Main::join([ map { $_->emit() } @{ $self->{block} } ], '; ') . ' }' }
}

{
package Do;
sub new { shift; bless { @_ }, "Do" }
sub block { $_[0]->{block} };
sub emit { my $self = $_[0]; 'do { ' . Main::join([ map { $_->emit() } @{ $self->{block} } ], '; ') . ' }' }
}

{
package Use;
sub new { shift; bless { @_ }, "Use" }
sub mod { $_[0]->{mod} };
sub emit { my $self = $_[0]; 'use ' . $self->{mod} }
}

1;
