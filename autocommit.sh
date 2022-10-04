echo "Enter the size"
read N

i=1

while [ $i -le $N ]
do
  read num
  touch file$i.txt
  echo "this is a test" > file$i.txt
  git add .
  echo 'Enter the commit message:'
  read commitMessage
  git commit -m "$i: $commitMessage"
  #git commit -m "$i: $i commit"
  i=$((i + 1))
done
echo 'Enter the name of the branch:'
read branch
git remote add origin $1
git push origin $branch
