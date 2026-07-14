requires perl => '5.010';

requires 'CloudStore' => '0.03';
requires 'WebService::Dropbox' => '2.00';
requires 'Role::Tiny::With';

requires 'IO::File';
requires 'DateTime::Format::RFC3339';
requires 'List::Util';
requires 'Fcntl';
requires 'Carp';

on 'test' => sub {
    requires 'Test::More', '0.98';
};

