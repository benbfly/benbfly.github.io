#!/usr/bin/env perl

use strict;
use JSON;

my @dois = ("10.1093/bioinformatics/bty902",
	    "10.1038/S41588-018-0073-4",
	    "10.1136/GUTJNL-2017-314607",
	    "10.1161/CIRCULATIONAHA.116.024590",
	    "10.1038/NG.3683",
	    "10.1186/S13059-015-0668-3",
	    "10.1101/GR.183368.114",
	    "10.1101/GR.143008.112",
	    "10.1186/GB-2012-13-7-R61"
    );

for (my $i=0; $i < scalar(@dois); $i++)
{
    my $doi = $dois[$i];
    my $cmd = sprintf("curl https://data.datacite.org/application/vnd.citationstyles.csl+json/%s > ref%04d.json",$doi, ($i+1)*10);
    print STDERR "$cmd\n";
    `$cmd`;
}

# https://metacpan.org/pod/JSON
# $json = JSON->new->allow_nonref;
# $perl_scalar = $json->decode( $json_text );
# $pretty_printed = $json->pretty->encode( $perl_scalar ); # pretty-printing