#!/bin/sh

ogg_files=`cd bg1ub; ls *.ogg;`

for file in $ogg_files; do
  bg1ub/sox  bg1ub/$file override/${file%.ogg}.wav
done
