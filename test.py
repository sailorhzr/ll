#!/usr/bin//env python
#coding: UTF-8
import requests

#url='https://api.github.com/events'
#url='http://httpbin.org/get'
url='http://www.zhihu.com/question/20899988'

payload={'test':'testpasswd','test1':'test1passwd'}
r=requests.get(url,params=payload)
print r.url

