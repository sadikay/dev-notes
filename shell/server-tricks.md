
### Server Side Tricks

Deleting tons of files in Linux (Error: Argument list too long)

`cd /tmp`

`find . -type f -exec rm -v {} \;`

To clean empty folders:

`sudo rm -rf /tmp/*`
