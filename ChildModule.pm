package ChildModule;

use strict;
use warnings;

use base 'Exporter';
use Common;

our %EXPORT_TAGS = ( all => [ qw(cf), ], );
Exporter::export_tags('all');

sub cf { 
    INFO "Child\n";
}

1;
