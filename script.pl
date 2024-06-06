#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;
use Mojo::UserAgent;
use Mojo::Promise;

my $post = 'https://jsonplaceholder.typicode.com/posts/1';

my $UA = Mojo::UserAgent->new;

# my $Result = $UA->get($post)->result;
# say $Result->is_success;
# say $Result->code;
# say $Result->body;

my @promises = map {
  $UA->get_p('https://jsonplaceholder.typicode.com/posts/1')
} 1 .. 10;

Mojo::Promise->all(@promises)
  ->then(
    sub {
      my @resolved = @_;
      say Dumper($_->[0]->result->json) for @resolved;
    }
  )
  ->wait;
1;
