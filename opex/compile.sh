#!/bin/bash

#sed -i 's/{targetPlayerMajorVersion}/10.0/g' $flexlib/flex-config.xml && grep -r -l -e "\"assets" -e "'assets" /Opex_Flex_3_6/* | xargs sed -i "s/assets/\/assets/g"

java -Xmx1024m -version

export _JAVA_OPTIONS=-Xmx1024m

mxmlc -load-config+=config/config-compiler.xml Opex_Flex_3_6/src/evoraopex.mxml -output output/evoraopex.swf