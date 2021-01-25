package NWN::2da::spec::lightcolor;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "placeables";
  $self->{maxrows} = 0;
  $self->{parent} = "placeables.2da";
  $self->{label} = "LABEL";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{RED} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{GREEN} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{BLUE} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{LABEL} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{TOOLSETRED} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{TOOLSETGREEN} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{TOOLSETBLUE} = {
    "reference" => "",
    "format" => ["float"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::lightcolor

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("lightcolor.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the lightcolor.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da

=cut

1;
