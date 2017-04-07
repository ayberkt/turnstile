echo "rf -file=$1 | parse -lang=DefinitionEng | linearize -lang=DefinitionCoq" | gf --run src/DefinitionEng.gf src/DefinitionCoq.gf
