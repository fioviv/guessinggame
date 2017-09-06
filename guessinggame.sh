echo "Welcome!"
echo "how many files are in the current directory?"
echo "please enter your guess"
while
read number
ammount=$(ls | wc -w)
[[ $number -eq $ammount ]]
[[ $? -ne 0 ]]
do 
if [[ $number -gt $ammount ]]
then
echo "your number is too high, please try again"
elif [[ $number -lt $ammount ]]
then
echo "your number is too low, please try again"
else 
echo "try again"
fi
done 
echo "your number is correct, congratulations!"
function about {
echo "build by Franco Iovi for The Unix Workbench Course, 2017"
}
