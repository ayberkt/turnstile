for i in `ls *.gf`; do
  cat $i | tr -d '\n' | gf --run ../../src/FunctionEng.gf ../../src/FunctionCoq.gf
done
