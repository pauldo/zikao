#!/bin/bash
folder=`pwd`
if [ ! -d "$folder/note" ]; then
    echo "请在项目根目录下运行"
    exit 1
fi

folders=`find note -type d`
for folder in $folders; do
    num=`ls -l $folder|grep ".puml"|wc -l`
    if [ $num -eq 0 ]; then
        continue
    fi
    #java -jar bin/plantuml.jar -o "output" -I "$folder/*.puml" -tsvg
    java -DPLANTUML_LIMIT_SIZE=24384 -jar bin/plantuml.jar -o "output" -I "$folder/*.puml" -tpng
done
