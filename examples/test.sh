for i in `ls *.gf`; do
  echo "\x1b[1m\x1b[37mRunning file $i\n----------------------------------\x1b[0m"
  cat $i | tr -d '\n' | gf --run ../src/MathEng.gf ../src/MathCoq.gf
done
