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

my @colors ;
$colors[0] = "220/20/60" ; #crimson
$colors[1] = "154/205/50" ; #yellow green
$colors[2] = "32/178/170" ; #sea green
#$colors[3] = "160/82/45" ; #brown
$colors[3] = "244/164/96" ; #brown
$colors[4] = "176/196/222" ; #light blue
$colors[5] = "238/130/238" ; #violeta
$colors[6] = "123/104/238" ;
$colors[7] = "60/179/113" ;
#$colors[7] = "0" ;
$colors[8] = "86" ;
$colors[9] = "172" ;
$colors[10] = "255" ;


my $rop = "" ;
my $jop = "X7c" ;

my $ps ;

$ps .= `psxy -R$rop -J$jop -K -T -P -Xc -Yc` ;

$ps .= `psxy -R$rop -J$jop -O -T -P` ;

print $ps ;
