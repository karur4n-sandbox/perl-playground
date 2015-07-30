use strict;
use warnings;

my $maximum = &max(3, 5, 10, 4, 6);
print "$maximum\n";

sub max {
  # 初めてのPerl 5版だと リストコンテキストにしてあるけどする必要ある？
  # my ($max_so_far) = shift @_;
  my $max_so_far = shift @_;
  foreach (@_) {
    if ($_ > $max_so_far) {
      $max_so_far = $_;
    }
  }
  $max_so_far;
}
