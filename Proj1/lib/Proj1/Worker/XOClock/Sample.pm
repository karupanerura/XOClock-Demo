package Proj1::Worker::XOClock::Sample;
use strict;
use warnings;
use utf8;

use parent qw/XOClock::Worker/;

use Log::Minimal;

sub run {
    my($class, $args) = @_;
    my $sleep_time = $args->{sleep_time} || 1;

    infof('sleep_time = %d', $sleep_time);
    sleep($sleep_time);
    infof('sleep finished!!');
}

1;
