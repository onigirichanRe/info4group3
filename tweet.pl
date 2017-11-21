#!/usr/bin/env perl
use strict;
use warnings;

if(! -e "$ARGV[0]") {
  exit;
}

open(IN, "$ARGV[0]");
open(FH,">> result.txt");

my @file = '';
my $count = 0;
while (<IN>) {
  chomp;
  push (@file,((split(/,/,$_))[5]));
  print FH "$file[$#file]\n";
    }


close(FH);
close(IN);

