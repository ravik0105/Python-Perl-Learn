use warnings;
use strict;
use Data::Dumper; 

my $text = <<END;
name: Antonio Vivaldi, period: 1678-1741
name: Ravi Kannan Zani, period: 1696-1757
name: Antonio Brioschi, period: 1725-1750
END

my %composers;

for my $line (split /\n/, $text){
#    print $line, "\n";
    if($line =~ /name:\s+([\w+\s]+),\s+period:\s*(\d{4}\-\d{4})/){
    	$composers{$1} = $2;
    }
}

print Dumper(\%composers);

# output will be like below
#$VAR1 = {
#          'Antonio Brioschi' => '1725-1750',
#          'Ravi Kannan Zani' => '1696-1757',
#          'Antonio Vivaldi' => '1678-1741'
#        };
