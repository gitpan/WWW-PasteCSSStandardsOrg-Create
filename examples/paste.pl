#!/usr/bin/env perl

use strict;
use warnings;

use lib '../lib';
use WWW::PasteCSSStandardsOrg::Create;

my $paster = WWW::PasteCSSStandardsOrg::Create->new;

$paster->paste( 'text'x20, expire => 'day', )
    or die $paster->error;

printf "Your paste is located on: %s\n", $paster->uri;