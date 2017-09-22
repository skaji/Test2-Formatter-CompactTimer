package Test2::Formatter::CompactTimer;
use strict;
use warnings;

our $VERSION = '0.001';

use parent 'Test2::Formatter::Test2';

sub render_info {
    my ($self, $f, $tree) = @_;

    if ($f->{info}[-1]{tag} eq "TIME") {
        my $time = pop @{$f->{info}};
        my ($sec) = $time->{details} =~ /([\d.]+)s/;
        for my $info (grep { $_->{tag} =~ /^(?:SKIPPED|FAILED|PASSED)$/ } @{$f->{info}}) {
            $info->{details} = sprintf "%7.3fs %s", $sec, $info->{details};
        }
    }
    $self->SUPER::render_info($f, $tree);
}

1;
__END__

=encoding utf-8

=head1 NAME

Test2::Formatter::CompactTimer - a Test2::Harness formatter with compat timer

=head1 SYNOPSIS

Before:

    ❯ yath test -T -j4 xt
    ( PASSED )  job  4    xt/04_version.t
    (  TIME  )  job  4    0.02574s on wallclock (0.04 usr 0.00 sys + 0.00 cusr 0.00 csys = 0.04 CPU)
    ( PASSED )  job  3    xt/03_resolver.t
    (  TIME  )  job  3    0.10589s on wallclock (0.06 usr 0.01 sys + 0.00 cusr 0.00 csys = 0.07 CPU)
    ( PASSED )  job  1    xt/01_installer.t
    (  TIME  )  job  1    0.62809s on wallclock (0.28 usr 0.05 sys + 0.16 cusr 0.03 csys = 0.52 CPU)
    ( PASSED )  job  2    xt/02_installer.t
    (  TIME  )  job  2    0.63892s on wallclock (0.28 usr 0.05 sys + 0.17 cusr 0.03 csys = 0.53 CPU)

With Test2::Formatter::CompactTimer:

    ❯ yath test -T --formatter CompactTimer -j4 xt
    ( PASSED )  job  4      0.033s xt/04_version.t
    ( PASSED )  job  3      0.413s xt/03_resolver.t
    ( PASSED )  job  1      0.669s xt/01_installer.t
    ( PASSED )  job  2      0.681s xt/02_installer.t
    ( PASSED )  job  7      5.874s xt/12_range.t

=head1 DESCRIPTION

Test2::Formatter::CompactTimer is a fommater for L<Test2::Harness>, which displays elapsed time in a compact form.

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
