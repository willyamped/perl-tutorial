#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ signatures /;

use Data::Dumper;

require './script2.pl';

our ( $script2_var);

print "$script2_var";
1;
