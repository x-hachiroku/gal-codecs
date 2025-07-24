#!/bin/sh

mkdir -p ./data/app/data/scenario/ ./data/app/data/image/ ./data/app/data/bgimage/ ./data/app/data/fgimage/default/

cp -r ./data/translated_bgimg/* ./data/app/data/bgimage/         2>/dev/null
cp -r ./data/translated_img/*   ./data/app/data/image/           2>/dev/null
cp -r ./data/translated_img/*   ./data/app/data/fgimage/         2>/dev/null
cp -r ./data/translated_img/*   ./data/app/data/fgimage/default/ 2>/dev/null
cp -r ./data/translated_ks/*    ./data/app/data/scenario/
