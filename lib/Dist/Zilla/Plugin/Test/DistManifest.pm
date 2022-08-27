use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::Test::DistManifest;
# ABSTRACT: Release tests for the manifest

our $VERSION = '2.000007';

use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';
with 'Dist::Zilla::Role::PrereqSource';

sub register_prereqs
{
    my $self = shift;
    $self->zilla->register_prereqs(
        {
            type  => 'requires',
            phase => 'develop',
        },
        'Test::DistManifest' => 0,
    );
}

__PACKAGE__->meta->make_immutable;
no Moose;
1;

=head1 SYNOPSIS

In C<dist.ini>:

    [Test::DistManifest]

=for test_synopsis
1;
__END__

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

  xt/release/dist-manifest.t - a standard Test::DistManifest test

=for Pod::Coverage register_prereqs

=cut

__DATA__
___[ xt/release/dist-manifest.t ]___
use strict;
use warnings;
use Test::More;

use Test::DistManifest;
manifest_ok();
