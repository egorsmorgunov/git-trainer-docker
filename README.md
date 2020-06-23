
## Simple visualization tool for teaching git

Default setup [git-init.herzen.spb.ru](https://git-init.herzen.spb.ru)

Commands supported:

````
git add
git commit

git branch BRANCH_NAME
git checkout -b BRANCH_NAME
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
or
```
docker run -it --name gittrainer -p 8080:8080 -v "/home/esmorgunov/src:/home/bower/src" itherz/git-trainer-docker
```
#### Compile code
```
docker exec -it gittrainer grunt
 ```
