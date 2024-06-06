#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;
use Mojo::UserAgent;
use Mojo::Promise;

# FH is file handle, > is write
# open (my $FH, '>', './test.txt');

# >> to append
# open (my $FH, '>>', './test.txt');
# print $FH "hello world2";

# < to read all lines of code
# open (my $FH, '<', './test.txt');
# my $content = do {
#   local $/; <$FH>;
# };

# Read line by line
open (my $FH, '<', './test.txt');
my $content = '';
while(defined(my $line = <$FH>)) {
  $content .= $line;
}

close($FH);

say $content;

1;
