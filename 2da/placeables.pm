package NWN::2da::spec::placeables;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "placeables";
  $self->{maxrows} = 0;
  $self->{parent} = "bodybag.2da";
  $self->{label} = "Label";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Label} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{StrRef} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{ModelName} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{LightColor} = {
    "reference" => "row/lightcolor.2da",
    "format" => ["int"],
  };
  $self->{header}->{LightOffsetX} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{LightOffsetY} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{LightOffsetZ} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{SoundAppType} = {
    "reference" => "row/placeableobjsnds.2da",
    "format" => ["int"],
  };
  $self->{header}->{ShadowSize} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{BodyBag} = {
    "reference" => "row/bodybag.2da",
    "format" => ["int"],
  };
  $self->{header}->{LowGore} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Reflection} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Static} = {
    "reference" => "",
    "format" => ["bool"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::placeables

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("placeables.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the placeables.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/placeables.2da

=cut

1;
