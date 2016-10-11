#!/bin/bash

username="sailorhzr"
mail="sailorhzr@163.com"

`ssh -T git@github.com`

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


