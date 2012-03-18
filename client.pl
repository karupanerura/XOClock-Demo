use strict;
use warnings;
use utf8;

use XOClock::Client;
use POSIX ();

my $worker = shift(@ARGV) or die "Usage: $0 WorkerName [after]";
my $after  = shift(@ARGV) || 1;

my $client = XOClock::Client->new(
    host => '127.0.0.1',
    port => 5312,
);
my $res = $client->enqueue(
    name      => $worker,
    datetime  => POSIX::strftime('%Y-%m-%d %H:%M:%S', gmtime(time + $after)),
    args      => +{},
)->recv;
warn "Response: $res";

