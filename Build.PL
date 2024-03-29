use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::PasteCSSStandardsOrg::Create',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/WWW/PasteCSSStandardsOrg/Create.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                  => 1.04,
        'WWW::Mechanize'        => 1.34,
        'Class::Data::Accessor' => 0.04001,
    },
    add_to_cleanup      => [ 'WWW-PasteCSSStandardsOrg-Create-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
