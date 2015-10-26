package ParentModule;

use strict;
use warnings;

use base 'Exporter';
use Common;
use ChildModule;

# http://stackoverflow.com/questions/26262658/perl-nest-modules-and-access-subroutines-from-2nd-level-nested-modules-in-main#answer-26263401
our %EXPORT_TAGS = ( all => [ qw(pf), @ChildModule::EXPORT ], );
Exporter::export_tags('all');

sub pf {
    INFO "Parent\n";
}

1;
