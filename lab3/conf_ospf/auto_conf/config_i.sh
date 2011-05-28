g=3;
for i in `seq 3`
do
  while read file
  do
    file="g$g${i}/$file"
    sed "s/\.61\./.${g}1./g" $file | sed "s/\.62\./.${g}2./g" > tmp
#    sed "s/61/${g}1/g" $file | sed "s/62/${g}2/g" > tmp
    mv tmp $file
#  done < ss
  done < a
done
