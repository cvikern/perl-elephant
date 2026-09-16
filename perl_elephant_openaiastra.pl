#!/usr/bin/env perl
use strict; use warnings;

                                $_='open(my$elephant_source_file,"<",$0)||die("
                            Cannot".chr(32)."read".chr(32).$0.":".$!);my@elephant_s
                         ource_lines=<$elephant_source_file>;close($elephant_source
                       _file)||die($!);splice(@elephant_source_lines,0,3);pop@elepha
                     nt_source_lines;(s/[\r\n]+$//)for@elephant_source_lines;my$eleph
                   ant_canvas_width=0;for(@elephant_source_lines){$    elephant_canvas
                  _width=length($_)if(length($_)>$elephant_canva        s_width);}$elep
                hant_canvas_width+=$elephant_canvas_width%2;push    (@elephant_s   ource
                _lines,"")if@elephant_source_lines%2;for(@eleph    ant_source_li   nes){
               $_.=chr(32)x($elephant_canvas_width-length($_))    ;}my@reflected   _sour
              ce_lines=map{scalar(reverse($_))}@elephant_sour    ce_lines;my$render_smal
              l_elephant=sub{my($silhouette_source)=@_;my@asci   i_quadrant_glyph=map{chr
              ($_)}(32,46,46,95,39,124,47,74,96,92,124,76,94,5   5,70,88);my@miniature_ele
             phant;for(my$source_row=0;$source_row<@$silhouett   e_source;$source_row+=2){
              my$elephant_output_line="";for(my$source_column=   0;$source_column<$elephan
          t_canvas_width;$source_column+=2){my$occupied_quadra   nts=0;for(my$pixel_row=0;
          $pixel_row<2;++$pixel_row){for(my$pixel_column=0;$pi    xel_column<2;++$pixel_co
          lum  n){my$source_character=substr($silhouette_sourc     e->[$source_row+$pixel_
          row   ],$source_column+$pixel_column,1);$occupied_quad          rants=(
          $oc   cupied_quadrants<<1)|($source_character=~/\S/?1:0         );}}$e        le
          pha     nt_output_line.=$ascii_quadrant_glyph[$occupied_q      uadrants]    ;}pus
          h(@      miniature_elephant,$elephant_output_line);}return\@miniature_e  lephant;       };m
         y$r         ight_facing_elephant=$render_small_elephant->(\@elephant_sou  rce_line       s);
         my$          left_facing_elephant=$render_small_elephant-    >(\@reflect   ed_sour       ce_
         lin          es);my($elephant_pair,$elephant_row);for$el     ephant_pair   ([$left       _fa
         cin          g_elephant,$right_facing_elephant],[$right_     facing_elep   hant,$l       eft
         _fa          cing_elephant]){for$elephant_row(0  ..$#$ri     ght_facing_   elephan       t){
         my          $elephant_ou       tput_li          ne=$elep     hant_pair->[   0][$el       eph
        ant          _row].(chr(3       2)x4).$          elephant     _pair->[1][$   elephant   _row]
       ;$el          ephant_outpu       t_line=          ~s/\s+$/     /;print($ele   phant_output_lin
     e,"\n"          );}print("\n       ")if$el          ephant_p     air->[0]==$l   eft_facing_elep
     hant;}          ;;;;;;;;;;;;       ;;;;;;;          ;;;;;;;;     ;;;;;;;;;;;;    ;;;;;;;;;;;;;
     ;;;;;           ;;;;;;;;;;;;       ;;;;;;;          ;;;;;;;;     ;;;;;;;;;;;;     ;;;;;;;;;;;
                     ;;;;;;;;;;;;                                     ;;;;;;;;;;;;      ;;;;;;;;;
                     ;;;;;;;;;;;;                                     ;;;;;;;;;;';
s/\s//g;eval;die$@if$@;

