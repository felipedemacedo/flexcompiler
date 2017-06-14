#!/bin/bash

sed -i 's/{targetPlayerMajorVersion}/10.0/g' $flexlib/flex-config.xml && grep -r -l -e "\"com/images" -e "'com/images" /Evora_Capex_Flex_3_6/* | xargs sed -i "s/com\/images/\/com\/images/g"

mxmlc -load-config config/config-compiler.xml Evora_Capex_Flex_3_6/src/new_boq.mxml -output output/new_boq.swf