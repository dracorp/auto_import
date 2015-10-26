package ParentModule;

use strict;
use warnings;

use base 'Exporter';
use Common;

our @EXPORT = ( 'pf' );

sub pf { 
    INFO "Parent\n";
}

1;
