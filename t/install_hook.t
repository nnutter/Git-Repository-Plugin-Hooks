use strict;
use warnings;

use File::Temp qw();

use Test::Git qw(has_git test_repository);
use Git::Repository qw(Hooks);

use Test::More;

has_git();
plan tests => 3;

my $repo = test_repository();

my $source = File::Temp->new();

my $hook = $repo->hook_path('post-receive');

ok(! -e $hook, 'post-receive hook should not exist yet');
$repo->install_hook($source, 'post-receive');
ok(-e $hook, 'post-receive hook exist after install');
ok(-x $hook, 'post-receive hook is executable');
