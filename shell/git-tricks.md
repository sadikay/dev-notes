### Git Tricks
#### Add, Commit, Push in one command

add this method to your `.zshrc`
```
function gacp() {
    git add .
    git commit -a -m "$*"
    git push origin HEAD
}
```

Usage: `gacp my awesome commit without string quote`

#### Rebase master into feature branch

You can reabase latest changes of master into your current branch with one command.

add this method to your `.zshrc`
```
function rebaser(){
  git checkout master && git pull origin master && git checkout - && git rebase master
}
```

Usage: Just type `rebaser` in your feature branch.
