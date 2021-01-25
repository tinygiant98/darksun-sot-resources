package NWN::2da::spec::placeableobjsnds;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "placeableobjsnds";
  $self->{maxrows} = 0;
  $self->{parent} = "placeables.2da";
  $self->{label} = "Label";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Label} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ArmorType} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Opened} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Closed} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Destroyed} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Used} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Locked} = {
    "reference" => "",
    "format" => ["string"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::placeableobjsnds

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("placeableobjsnds.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the placeableobjsnds.2da file. Do
    not call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/placeableobjsnds.2da

=cut

1;
