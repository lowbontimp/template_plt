#!/usr/bin/env perl

use strict ;
use warnings ;

`gmtset COLOR_BACKGROUND 0/0/255` ;
`gmtset COLOR_FOREGROUND 255/0/0` ;
`gmtset COLOR_NAN 128/128/128` ;
`gmtset ANNOT_FONT_PRIMARY 0` ;
`gmtset ANNOT_FONT_SECONDARY 0` ;
`gmtset HEADER_FONT 0` ;
`gmtset HEADER_FONT_SIZE 14p` ;
`gmtset LABEL_FONT 0` ;
`gmtset PLOT_DEGREE_FORMAT D` ;
`gmtset BASEMAP_TYPE plain` ;
`gmtset ANNOT_OFFSET_PRIMARY 0.2c` ;
`gmtset ANNOT_FONT_SIZE_PRIMARY 14p` ;
`gmtset LABEL_FONT_SIZE 14p` ;
`gmtset PAGE_ORIENTATION portrait` ;
`gmtset CHAR_ENCODING Standard+` ;
`gmtset DEGREE_SYMBOL degree` ;
`gmtset LABEL_OFFSET 0.1c` ;
`gmtset TICK_LENGTH -0.3c` ;

my $rop = "" ;
my $jop = "X7c" ;

my $ps ;

$ps .= `psxy -R$rop -J$jop -K -T -P -Xc -Yc` ;

$ps .= `psxy -R$rop -J$jop -O -T -P` ;

print $ps ;
