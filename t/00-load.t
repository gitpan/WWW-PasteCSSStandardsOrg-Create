#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 7;

BEGIN {
    use_ok('Carp');
    use_ok('WWW::Mechanize');
    use_ok('Class::Data::Accessor');
	use_ok( 'WWW::PasteCSSStandardsOrg::Create' );
}

diag( "Testing WWW::PasteCSSStandardsOrg::Create $WWW::PasteCSSStandardsOrg::Create::VERSION, Perl $], $^X" );

my $o = WWW::PasteCSSStandardsOrg::Create->new;
isa_ok($o,'WWW::PasteCSSStandardsOrg::Create');
can_ok($o,qw(_set_error error uri paste new mech));
isa_ok($o->mech, 'WWW::Mechanize');