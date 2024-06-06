#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;
use Try::Tiny::SmartCatch;
use Exception::Class(
  'MyException',
  'App::Filesystem::Full'
);

try sub {
  if (rand(5) > 2) {
    App::Filesystem::Full->throw(error => 'oh no, the disk space is full!');
  } else {
    MyException->throw(error => 'something is not right')
  }
},
catch_when 'MyException' => sub {
  say "My exception!";
},
catch_when 'App::Filesystem::Full' => sub {
  say "I know this exception!: $_"
},
catch_default sub {
  say "$_";
};

1;
