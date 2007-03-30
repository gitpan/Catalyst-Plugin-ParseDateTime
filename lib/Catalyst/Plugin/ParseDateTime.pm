package Catalyst::Plugin::ParseDateTime;
use strict;
use warnings;
use DateTime::Format::HTTP;

our $VERSION = '0.01';

sub parse_datetime {
	my $c = shift;
	my $string = shift;

	if ($string) {
		return DateTime::Format::HTTP->parse_datetime($string);
	}
	else {
		return 0;
	}
}

1;
__END__

=head1 NAME

Catalyst::Plugin::ParseDateTime - ASCII String to DateTime Object for Catalyst.

=head1 SYNOPSIS

  use Catalyst qw/ParseDateTime/;

  my $string = '2006-12-29 12:34:56';
  my $dt = $c->parse_datetime($string); #Return DateTime Object

  # Example when Catalyst::View::TT
  [% Catalyst.parse_datetime(string).add(hours => 9) %]

=head1 DESCRIPTION

Powerd by L<DateTime::Format::HTTP>

=head1 METHOD

=head2 parse_datetime

ASCII String is converted into L<DateTime> Object by this plugin.

=head1 SEE ALSO

L<Catalyst>, L<DateTime::Format::HTTP>, L<DateTime>

=head1 AUTHOR

Kazuma Shiraiwa

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Kazuma Shiraiwa.
This program is free software; you may redistribute it and/or modify it
under the same terms as Perl itself.

=cut

