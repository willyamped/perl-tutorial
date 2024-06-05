#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;
use Dog;

my $Dog = Dog->new('labrador', 50, 70, 'golden', 'Fiddo');
say $Dog->height;

$Dog->set_height(100);
say $Dog->height;

say $Dog->get_height_and_weight;

1;
