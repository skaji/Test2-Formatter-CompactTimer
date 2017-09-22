[![Build Status](https://travis-ci.org/skaji/Test2-Formatter-CompactTimer.svg?branch=master)](https://travis-ci.org/skaji/Test2-Formatter-CompactTimer)
[![AppVeyor Status](https://ci.appveyor.com/api/projects/status/github/skaji/Test2-Formatter-CompactTimer?branch=master&svg=true)](https://ci.appveyor.com/project/skaji/Test2-Formatter-CompactTimer)

# NAME

Test2::Formatter::CompactTimer - Blah blah blah

# SYNOPSIS

    ❯ yath test -T --formatter CompactTimer -j4 xt
    ( PASSED )  job  4      0.033s xt/04_version.t
    ( PASSED )  job  3      0.413s xt/03_resolver.t
    ( PASSED )  job  1      0.669s xt/01_installer.t
    ( PASSED )  job  2      0.681s xt/02_installer.t
    ( PASSED )  job  7      5.874s xt/12_range.t
    ( PASSED )  job  8      6.398s xt/13_git.t
    ( PASSED )  job 10      3.811s xt/15_snapshot.t
    ( PASSED )  job  9      4.693s xt/14_perl_req.t
    ( PASSED )  job 11      1.546s xt/16_cpanfile_v.t
    ( PASSED )  job  6     14.480s xt/11_target_perl.t
    ( PASSED )  job  5     16.076s xt/10_basic.t
    ( PASSED )  job 12      6.512s xt/17_cpanfile.t
    ( PASSED )  job 13      6.467s xt/20_dev.t
    ( PASSED )  job 17      0.265s xt/24_core.t
    ( PASSED )  job 18      0.654s xt/25_static_install.t
    ( PASSED )  job 19      1.507s xt/26_retry.t
    ( PASSED )  job 15      6.507s xt/22_toolchain.t
    ( PASSED )  job 16      7.381s xt/23_same_module.t
    ( PASSED )  job 14     11.466s xt/21_resolver_option.t
    ( PASSED )  job 20      6.444s xt/27_with_without.t
    ( PASSED )  job 21      5.317s xt/28_timeout.t
    ( PASSED )  job 22      2.281s xt/30_prebuilt.t
    ( PASSED )  job 23      1.759s xt/31_circular_dep.t

# DESCRIPTION

Test2::Formatter::CompactTimer is a fommater for [Test2::Harness](https://metacpan.org/pod/Test2::Harness), which displays elapsed time in a compact form.

# AUTHOR

Shoichi Kaji <skaji@cpan.org>

# COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
