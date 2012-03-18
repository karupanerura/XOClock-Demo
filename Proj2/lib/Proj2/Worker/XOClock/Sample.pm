package Proj2::Worker::XOClock::Sample;
use strict;
use warnings;
use utf8;

use parent qw/XOClock::Worker/;

use Log::Minimal;
use Net::Twitter;

sub run {
    my($class, $args) = @_;

    my $nt = Net::Twitter->new(
        traits              => [qw/OAuth API::REST/],
        consumer_key        => 'KgjfIBQXrgQUeXt9HsSbAw',
        consumer_secret     => 'sKPYOzjLuUaujqVFYGXphwtG60aTC38ADQYDoP1c1A',
        access_token        => '164986273-HVjN9I6faUJBmgEonK5XkAJnSril0buU9Tv2uo',
        access_token_secret => 'i4TbsrdhcEMkrhjtE81U6hH275EDQotxeTusWYeJQ',
    );

    $nt->update('Hello Kyoto.pm world! #kyotopm (post by XOClock)');
}

1;
