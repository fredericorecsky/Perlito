# Do not edit this file - Generated by Perlito5 9.0
use v5;
use Perlito5::Perl5::Runtime;
package main;
package Perlito5::Grammar;
sub Perlito5::Grammar::unless {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((((((((((('u' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((('n' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('l' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('s' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('s' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Expression->term_paren($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.term_paren'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Expression->term_curly($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.term_curly'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (((((((((((((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('l' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('s' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('{' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Grammar.exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('}' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $body) = Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_curly'})->[2]);
    if (!(defined($body))) {
        die('Missing code block in ' . chr(39) . 'if' . chr(39))
    };
    ($MATCH->{'capture'} = Perlito5::AST::If->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_paren'})->[2]), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => (Perlito5::Match::flat($MATCH->{'Perlito5::Grammar.exp_stmts'}) || [])))), ('otherwise' => Perlito5::AST::Lit::Block->new(('stmts' => $body)))));
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((do {
    ((my  $body) = Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_curly'})->[2]);
    if (!(defined($body))) {
        die('Missing code block in ' . chr(39) . 'unless' . chr(39))
    };
    ($MATCH->{'capture'} = Perlito5::AST::If->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_paren'})->[2]), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => []))), ('otherwise' => Perlito5::AST::Lit::Block->new(('stmts' => $body)))));
    1
})))
})))
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::if {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((((((('i' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((('f' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Expression->term_paren($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.term_paren'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Expression->term_curly($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.term_curly'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((((do {
    (((((((((((((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('l' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('s' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('{' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Grammar.exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('}' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $body) = Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_curly'})->[2]);
    if (!(defined($body))) {
        die('Missing code block in ' . chr(39) . 'if' . chr(39))
    };
    ($MATCH->{'capture'} = Perlito5::AST::If->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_paren'})->[2]), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => $body))), ('otherwise' => Perlito5::AST::Lit::Block->new(('stmts' => (Perlito5::Match::flat($MATCH->{'Perlito5::Grammar.exp_stmts'}) || []))))));
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((((((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('l' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('s' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->if($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'if'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $body) = Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_curly'})->[2]);
    if (!(defined($body))) {
        die('Missing code block in ' . chr(39) . 'if' . chr(39))
    };
    ($MATCH->{'capture'} = Perlito5::AST::If->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_paren'})->[2]), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => $body))), ('otherwise' => Perlito5::AST::Lit::Block->new(('stmts' => [Perlito5::Match::flat($MATCH->{'if'})])))));
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((do {
    ((my  $body) = Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_curly'})->[2]);
    if (!(defined($body))) {
        die('Missing code block in ' . chr(39) . 'if' . chr(39))
    };
    ($MATCH->{'capture'} = Perlito5::AST::If->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.term_paren'})->[2]), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => $body))), ('otherwise' => Perlito5::AST::Lit::Block->new(('stmts' => [])))));
    1
})))
})))
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::when {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((((((('w' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((('h' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('n' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->exp($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'exp'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    die('when - not implemented');
    ((my  $body) = Perlito5::Match::flat($MATCH->{'exp'})->{'end_block'});
    if (!(defined($body))) {
        die('Missing code block in ' . chr(39) . 'when' . chr(39))
    };
    ($MATCH->{'capture'} = When->new(('parameters' => Perlito5::Match::flat($MATCH->{'exp'})->{'exp'}), ('body' => $body)));
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::for {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((((('f' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((('o' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('r' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    (('each' eq substr($str, $MATCH->{'to'}, 4)) && (($MATCH->{'to'} = (4 + $MATCH->{'to'}))))
})))) {
        ($MATCH = $m)
    };
    1
}))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (((((((((((((((((do {
    ((my  $m2) = $grammar->ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((('m' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('y' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Grammar->var_ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Grammar.var_ident'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('(' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = Perlito5::Expression->paren_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.paren_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && (((')' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('{' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Grammar.exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('}' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::For->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.paren_parse'})), ('topic' => undef()), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => Perlito5::Match::flat($MATCH->{'Perlito5::Grammar.exp_stmts'})), ('sig' => Perlito5::Match::flat($MATCH->{'Perlito5::Grammar.var_ident'}))))));
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((((((((((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((('(' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = Perlito5::Expression->paren_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.paren_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && (((')' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('{' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Grammar.exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('}' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::For->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.paren_parse'})), ('topic' => undef()), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => Perlito5::Match::flat($MATCH->{'Perlito5::Grammar.exp_stmts'})), ('sig' => undef())))));
    1
}))))
})))
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::while {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((((((((((((((('w' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((('h' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('i' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('l' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('(' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = Perlito5::Expression->paren_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.paren_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && (((')' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('{' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Grammar.exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('}' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::While->new(('cond' => Perlito5::Match::flat($MATCH->{'Perlito5::Expression.paren_parse'})), ('body' => Perlito5::AST::Lit::Block->new(('stmts' => Perlito5::Match::flat($MATCH->{'Perlito5::Grammar.exp_stmts'})), ('sig' => undef())))));
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};

1;
