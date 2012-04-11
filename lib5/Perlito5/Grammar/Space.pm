# Do not edit this file - Generated by Perlito5 9.0
use v5;
use Perlito5::Perl5::Runtime;
package main;
package Perlito5::Grammar::Space;
use Perlito5::Precedence;
((my  %space) = (('#' => sub {
    ((my  $m) = Perlito5::Grammar::Space->to_eol($_[0], $_[1]));
    $m->{'to'}
}), (chr(9) => sub {
    $_[1]
}), (chr(10) => sub {
    ((my  $str) = $_[0]);
    ((my  $pos) = $_[1]);
    if ((substr($str, $pos, 1) eq chr(13))) {
        ($pos)++
    };
    ((my  $m) = Perlito5::Grammar::Space->start_of_line($_[0], $pos));
    $m->{'to'}
}), (chr(12) => sub {
    $_[1]
}), (chr(13) => sub {
    ((my  $str) = $_[0]);
    ((my  $pos) = $_[1]);
    if ((substr($str, $pos, 1) eq chr(10))) {
        ($pos)++
    };
    ((my  $m) = Perlito5::Grammar::Space->start_of_line($_[0], $pos));
    $m->{'to'}
}), (chr(32) => sub {
    $_[1]
})));
sub Perlito5::Grammar::Space::term_space {
    ((my  $str) = $_[0]);
    ((my  $p) = $_[1]);
    for ( ; exists($space{substr($str, $p, 1)});  ) {
        ($p = $space{substr($str, $p, 1)}->($str, ($p + 1)))
    };
    return ({('str' => $str), ('from' => $pos), ('to' => $p), ('capture' => ['space', ' '])})
};
Perlito5::Precedence::add_term(('#' => \&term_space));
Perlito5::Precedence::add_term((chr(9) => \&term_space));
Perlito5::Precedence::add_term((chr(10) => \&term_space));
Perlito5::Precedence::add_term((chr(12) => \&term_space));
Perlito5::Precedence::add_term((chr(13) => \&term_space));
Perlito5::Precedence::add_term((chr(32) => \&term_space));
sub Perlito5::Grammar::Space::to_eol {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    for ( ; (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = {('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})});
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((chr(10) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((chr(13) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
}))
})));
    ($MATCH = ($res ? 0 : $tmp))
})) && ((('' ne substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'})
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    1
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::Space::pod_pod_begin {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((chr(10) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((chr(13) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
})) && ((('=cut' eq substr($str, $MATCH->{'to'}, 4)) && (($MATCH->{'to'} = (4 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->to_eol($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((('' ne substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->to_eol($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->pod_pod_begin($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::Space::pod_begin {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((chr(10) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((chr(13) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
})) && ((('=end' eq substr($str, $MATCH->{'to'}, 4)) && (($MATCH->{'to'} = (4 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->to_eol($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((('' ne substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->to_eol($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->pod_begin($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::Space::start_of_line {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = {('str' => $str), ('from' => $pos), ('to' => $pos)});
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $m2) = Perlito5::Grammar::String->here_doc($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (((('=' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((((do {
    (((('pod' eq substr($str, $MATCH->{'to'}, 3)) && (($MATCH->{'to'} = (3 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->pod_pod_begin($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('head1' eq substr($str, $MATCH->{'to'}, 5)) && (($MATCH->{'to'} = (5 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->pod_pod_begin($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('begin' eq substr($str, $MATCH->{'to'}, 5)) && (($MATCH->{'to'} = (5 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->pod_begin($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('for' eq substr($str, $MATCH->{'to'}, 3)) && (($MATCH->{'to'} = (3 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->pod_begin($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))))
})))
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (1)
})))
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::Space::ws {
    ((my  $self) = shift());
    ((my  $str) = shift());
    ((my  $pos) = shift());
    ((my  $p) = $pos);
    for ( ; exists($space{substr($str, $p, 1)});  ) {
        ($p = $space{substr($str, $p, 1)}->($str, ($p + 1)))
    };
    if (($p == $pos)) {
        return (0)
    };
    return ({('str' => $str), ('from' => $pos), ('to' => $p)})
};
sub Perlito5::Grammar::Space::opt_ws {
    ((my  $self) = shift());
    ((my  $str) = shift());
    ((my  $p) = shift());
    for ( ; exists($space{substr($str, $p, 1)});  ) {
        ($p = $space{substr($str, $p, 1)}->($str, ($p + 1)))
    };
    return ({('str' => $str), ('from' => $pos), ('to' => $p)})
};
1;

1;
