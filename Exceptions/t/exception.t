use strict;
use warnings;
use Test::More tests => 6;
use Test::Exception;
use Try::Tiny;

BEGIN { use_ok( 'Exception' ); }

throws_ok{ Exception->throw('I am throwing it')         } 'Exception', 'thrown';
throws_ok{ Exception::Argument->throw('error')          } 'Exception::Argument', 'Exception::Argument thrown';
throws_ok{ Exception::Development->throw('error')       } 'Exception::Development', 'Exception::Development thrown';
throws_ok{ Exception::NotImplementedYet->throw('error') } 'Exception::NotImplementedYet', 'Exception::NotImplementedYet thrown';

try {
    Exception::Argument->throw('another error');
} catch {
    my $e = shift;
    is($e->message, 'another error', 'exception message has been parsed');
};