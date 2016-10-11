#!/bin/bash

username="sailorhzr"
mail="sailorhzr@163.com"

usage() {
echo "usage: $0 {new |  push}"
}

git_new(){
`ssh -T git@github.com`	#test connection
`git config --global user.name $username`
`git config --global user.email $mail`

echo "please input your git path(such as \"https://github.com/sailorhzr/ll.git\"):"
read url
echo "# my readme" >> README.md
`git init`
`git add README.md`
`git commit -m "first commit"`
`git remote add origin $url`
#`git remote add origin https://github.com/sailorhzr/ll.git`
`git push -u origin master`
}

git_push(){

#add file
echo -n "what file do you want push:"
read filename
if [ "$filename" == '' ];then
    `git add *`
else
    `git add $filename`
fi


#commit file
echo -n "input your commit:"
read commit
if [ "$commit" == '' ];then
    `git commit -m "test"`
else
    `git commit -m \"$commit\"`
fi


#push file
`git push origin master`

}

case $1 in
new)
git_new
;;

push)
git_push
;;

*)
usage
;;
esac
