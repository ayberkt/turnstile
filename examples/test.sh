for i in `ls *.gf`; do
  cat $i | tr -d '\n' | gf --run ../src/DefinitionEng.gf ../src/DefinitionCoq.gf
done