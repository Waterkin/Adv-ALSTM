###
 # @Date: 2022-01-09 23:00:12
 # @LastEditors: Waterking
 # @LastEditTime: 2022-01-09 23:00:12
 # @FilePath: /Adv-ALSTM/autoSyn.sh
### 
#!/bin/sh
git status  
git add *  
git commit -m 'add some code from Mac'
# git commit -m 'add some results from Server'
git pull --rebase origin master   #domnload data
git push origin master            #upload data
git stash pop