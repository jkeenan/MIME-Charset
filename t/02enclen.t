use strict;
use Test::More qw(no_plan);
use MIME::Charset qw(:trans);

my $s = "Perl\xe8\xa8\x80\xe8\xaa\x9e";
ok(encoded_header_len($s,"b","utf-8") == 28);
ok(encoded_header_len($s,"q","utf-8") == 34);
ok(encoded_header_len($s,"s","utf-8") == 28);
