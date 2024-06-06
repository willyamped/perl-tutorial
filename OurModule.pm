package OurModule;

use strict;
use warnings;

use Exporter qw/ import/;

our @EXPORT_OK = qw/ add_nums/;

sub add_nums {
  my ( $num1, $num2 ) = @_; # static method does not need $class
  return $num1 + $num2;
}

1;