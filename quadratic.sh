echo "enter the coefficient of the quadratic equation (a,b,c):"
read a b c
discriminant=$((b*b - 4 * a * c))
if [ $discriminant -lt 0 ]
then
   echo "The quadratic equation has non real roots"
else
   root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2*$a)" | bc)
   root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2*$a)" | bc)   
   echo "the root of the quadratic equation are: $root1 and $root2"
fi   
