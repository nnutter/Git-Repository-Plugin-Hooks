[![Build Status](https://travis-ci.org/nnutter/Git-Repository-Plugin-Hooks.png?branch=master)](https://travis-ci.org/nnutter/Git-Repository-Plugin-Hooks)
# NAME

Git::Repository::Plugin::Hooks - Work with hooks in a Git::Repository

# SYNOPSIS

    use Git::Repository 'Hooks';

    my $r = Git::Repository->new();
    $r->install_hook('my-hook-file', 'pre-receive');

# DESCRIPTION

Git::Repository::Plugin::Hooks is ...

# METHODS

## install\_hook($source, $target)

Install a `$target`, e.g. 'pre-receive', hook into the repository.

# LICENSE

Copyright (C) Nathaniel Nutter.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Nathaniel Nutter <nnutter@cpan.org>
