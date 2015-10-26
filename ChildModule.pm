package ChildModule;

use strict;
use warnings;

use base 'Exporter';
use Common;

our @EXPORT = ( 'cf');

sub cf { 
    INFO "Child\n";
}

1;
