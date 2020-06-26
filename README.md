
## Simple visualization tool for teaching git

Default setup [git-init.herzen.spb.ru](https://git-init.herzen.spb.ru)

Yandex Frontend Academy Presentation [youtube.com](https://www.youtube.com/watch?v=yDSs80lu3ak)

Commands supported:

````
git add
git commit
git add && git commit  | alias git ci

git branch BRANCH_NAME  | alias git b
git checkout -b BRANCH_NAME  | alias git co
git checkout BRANCH_NAME

git merge BRANCH_NAME
git rebase BRANCH_NAME

git reset HASH

git gc

git cherry-pick HASH #just for demo

git revert HASH  #just for demo
````
## Docker

Start docker container

```
docker run -it --name gittrainer -p 8080:8080 itherz/git-trainer-docker
```
or spot mount
```
docker run -it --name gittrainer -p 8080:8080 -v "/www/git-trainer-docker/files/src:/home/bower/src" -v "/www/git-trainer-docker/files/Gruntfile.js:/home/bower/Gruntfile.js" zloystrelok/git-trainer-docker
```
#### Compile code
```
docker exec -it gittrainer grunt
 ```