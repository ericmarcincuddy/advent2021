#!/usr/bin/env perl

use strict;
use warnings;

sub getDepthProduct {

  my $x = 0;
  my $y = 0;

  open FH, "input.txt" or die "Could not open input.txt: $!";
  while(<FH>) {
    if(/^forward (\d+)$/) { $x += $1; }
    elsif(/^down (\d+)$/) { $y += $1; }
    elsif(/^up (\d+)$/)   { $y -= $1; }
  }
  close FH;

  my $prod = $x * $y;

  print "Position-depth product: $prod\n";

}

sub getDepthProductWithAim {

  my $x = 0;
  my $y = 0;
  my $aim = 0;

  open FH, "input.txt" or die "Could not open input.txt: $!";
  while(<FH>) {
    if(/^forward (\d+)$/) { $x += $1; $y += $aim * $1; }
    elsif(/^down (\d+)$/) { $aim += $1; }
    elsif(/^up (\d+)$/)   { $aim -= $1; }
  }
  close FH;

  my $prod = $x * $y;

  print "Position-depth product with aim: $prod\n";

}

getDepthProduct();
getDepthProductWithAim();
