use strict;
use CloudStore::Test::Driver;
use Test::More 0.98;

ok(1, 'Test module loaded');

my $key    = $ENV{'DROPBOX_KEY'};          #// CloudStore::Test::Driver::maybe_prompt('Dropbox Key: ');
my $secret = $ENV{'DROPBOX_SECRET'};       #// CloudStore::Test::Driver::maybe_prompt('Dropbox Secret: ');
my $token  = $ENV{'DROPBOX_ACCESS_TOKEN'}; #// CloudStore::Test::Driver::maybe_prompt('Dropbox Access Token: ');

SKIP: {
  skip "No Dropbox user credentials available"
    unless $key or $secret or $token;

  CloudStore::Test::Driver::test_driver(
    driver  => 'Dropbox',
    connection_info => {
      key => $key, secret => $secret, access_token => $token
    },
    make_plan => 0
  );
}

done_testing;
