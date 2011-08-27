use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::DistManifestTests;
# ABSTRACT: (DEPRECATED) Release tests for the manifest
# VERSION
use Moose;
extends 'Dist::Zilla::Plugin::Test::DistManifest';

before register_component => sub {
    warn '!!! [DistManifestTests] is deprecated and will be removed in a future release; replace it with [Test::DistManifest]';
};

__PACKAGE__->meta->make_immutable;
no Moose;
1;

=for test_synopsis
1;
__END__

=head1 SYNOPSIS

Please use L<Dist::Zilla::Plugin::Test::DistManifest>.

In C<dist.ini>:

    [Test::DistManifest]

=cut
