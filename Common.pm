package Common;

use strict;
use warnings;

use base 'Exporter';

use Log::Log4perl qw(:easy);
Log::Log4perl->easy_init( {file => "STDOUT", layout => '%p - %m%n' } );
use English;

# http://stackoverflow.com/questions/732133/how-can-i-export-all-subs-in-a-perl-package#answer-732366
sub import {
    no strict 'refs';

    my $caller = caller;

    while (my ($name, $symbol) = each %{__PACKAGE__ . '::'}) {
        next if      $name eq 'BEGIN';   # don't export BEGIN blocks
        next if      $name eq 'import';  # don't export this sub
#        next unless *{$symbol}{CODE};    # export subs only

        my $imported = $caller . '::' . $name;
        *{ $imported } = \*{ $symbol };
    }
}

1;
