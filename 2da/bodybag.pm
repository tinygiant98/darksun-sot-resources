package NWN::2da::spec::bodybag;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "bodybag";
  $self->{maxrows} = 0;
  $self->{parent} = "appearance.2da";
  $self->{label} = "LABEL";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{LABEL} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Name} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{Appearance} = {
    "reference" => "row/placeables.2da",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::bodybag

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("bodybag.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the bodybag.2da file. Do not call
    this module directly but use the methods on file specification in NWN::2da
    instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Bodybag.2da

=cut

1;
