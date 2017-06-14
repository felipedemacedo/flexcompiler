#!/bin/bash

sed -i 's/{targetPlayerMajorVersion}/10.0/g' $flexlib/flex-config.xml && grep -r -l -e "\"com/assets" -e "'com/assets" /Coliseu_Flex_3_6/* | xargs sed -i "s/com\/assets/\/com\/assets/g"


grep -r -l -e "\"/com/assets/images/loading.swf" /Coliseu_Flex_3_6/* | xargs sed -i "s/\"\/com\/assets\/images\/loading.swf/\"com\/assets\/images\/loading.swf/g"


grep -r -l -e "\"/com/assets/super_menu" /Coliseu_Flex_3_6/* | xargs sed -i "s/\"\/com\/assets\/super_menu/\"com\/assets\/super_menu/g"

grep -r -l -e "listar_od.png" /Coliseu_Flex_3_6/* | xargs sed -i "s/listar_od.png/Listar_OD.png/g"

java -Xmx1024m -version

export _JAVA_OPTIONS=-Xmx1024m


mxmlc -load-config config/config-compiler.xml Coliseu_Flex_3_6/src/SuperColiseu.mxml -output output/SuperColiseu.swf
