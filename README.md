Bash Scripting 

### Variables

s=$(pwd)
echo $s
ls $s

### read

read myvalue
<enter text>
echo $myvalue

read -p "type your age " age
echo $age
echo "you are $age old"

read -s password
<enter password> --> (not visible)
echo $password

### Aritmethic

echo " $((2+3)) "
echo " SUM $(( number1 + number2 )) "
echo " PRODUCT $(( number1 * number2 )) "
echo " DIVISION $(( number1 - number2 )) "
echo " REMINDER $(( 10 % 3 )) "
echo " POWER $(( 3**2 )) "

- increase a variable
number1=$(( number1 + 1))
echo " $(( number1++ ))

- short way of operating on a variable
num=10
num=$(( num + 3 ))
echo "ADD $(( num+=3 ))
echo "SUBSTRACT $(( num-=6 ))
echo "MULTI $(( num*=10 ))

### Arithmetic Conditions

- [ 3 -eq 3 ] same as [ 3 = 3 ] --> equal
- [ 3 -nq 4 ] same as [ 3 is not 4 ] --> not equal
- [ 3 -qt 2 ] same as [ 3 > 2 ] --> greater than
- [ 3 -lt 7 ] same as [ 3 < 7 ] --> less than

- [ 3 -qe 3 ] same as [ 3 >= 3 ] --> greater or equal
- [ 3 -le 3 ] same as [ 3 <= 3 ] --> less or equal

### Exit Status

0 - good
1+ - error