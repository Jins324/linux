echo "enter an integer:"
read number
count=${#number}
sum=0
for((i=0;i<count;i++))
do
  digit=${number:i:1}
  sum=$((sum + digit**count))
done
if [ "$sum" -eq "$number" ]
then
   echo "The number $number is an armstrong number."
else
   echo "the number $number is not an armstrong number." 
fi
    

