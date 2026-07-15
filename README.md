[![Actions Status](https://github.com/dstroma/CloudStore-Driver-Dropbox/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/dstroma/CloudStore-Driver-Dropbox/actions?workflow=test)
# NAME

CloudStore::Driver::Dropbox - Dropbox driver for CloudStore

# SYNOPSIS

    use CloudStore;
    my $cs = CloudStore->new(driver => 'Dropbox');
    $cs->connect(key => $key, secret => $secret);
    $cs->upload('myfile.txt' => 'myfile.txt');

# DESCRIPTION

CloudStore::Driver::Dropbox is a Dropbox driver for Cloudstore.
It uses WebService::Dropbox under the hood.

# AUTHOR, COPYRIGHT, and LICENSE

Copyright (C) by Dondi Michael Stroma. <dstroma@gmail.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
