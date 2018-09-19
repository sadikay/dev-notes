### Capistrano Errors
#### Permission denied (publickey) while deploying
After runing `cap production deploy` it's possible to get permission denied (publickey) error because of your ssh config.
Solution:
```shell
 $ ssh-add -D # remove existing identities
 $ ssh-agent # copy the lines & run them
 $ ssh-add # uses the output from above
```
### Puma socket not find
Create sockets directory:
`mkdir /home/ubuntu/apps/app-name/shared/tmp/sockets`
