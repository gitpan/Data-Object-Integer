# ABSTRACT: An Integer Object for Perl 5
package Data::Object::Integer;

use 5.10.0;

use Moo 'with';
use Scalar::Util 'blessed';
use Types::Standard 'Int';

with 'Data::Object::Role::Integer';

our $VERSION = '0.02'; # VERSION

sub new {
    my $class = shift;
    my $data  = shift;

    $class = ref($class) || $class;
    $data  = Int->($data)
        unless blessed($data) && $data->isa($class);

    return bless \$data, $class;
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Data::Object::Integer - An Integer Object for Perl 5

=head1 VERSION

version 0.02

=head1 SYNOPSIS

    use Data::Object::Integer;

    my $integer = Data::Object::Integer->new(9);

=head1 DESCRIPTION

Data::Object::Integer provides common methods for operating on Perl 5 integer
data.

=head1 SEE ALSO

=over 4

=item *

L<Data::Object::Array>

=item *

L<Data::Object::Code>

=item *

L<Data::Object::Float>

=item *

L<Data::Object::Hash>

=item *

L<Data::Object::Integer>

=item *

L<Data::Object::Number>

=item *

L<Data::Object::Scalar>

=item *

L<Data::Object::String>

=item *

L<Data::Object::Undef>

=item *

L<Data::Object::Universal>

=back

=head1 AUTHOR

Al Newkirk <anewkirk@ana.io>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Al Newkirk.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
