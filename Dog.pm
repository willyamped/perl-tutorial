package Dog;

use strict;
use warnings;

sub new {
  my ( $class, $breed, $height, $weight, $color, $name ) = @_;

  my $self = {
    breed => $breed,
    height => $height,
    weight => $weight,
    color => $color,
    name => $name,
  };
  bless $self, $class;

  return $self;
}

# getter
sub breed { 
  my $self = shift;
  return $self->{breed};
};

sub height { 
  my $self = shift;
  return $self->{height};
};

sub set_height {
  my ($self, $height) = @_;
  $self->{height} = $height;
}

sub get_height_and_weight {
  my $self = shift;
  return $self->{height} + $self->{weight};
}

# To do code clean up
sub DESTROY {
  print "bye everyone!\n";
}

1;
