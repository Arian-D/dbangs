## dbangs
### What
dbangs is a CLI tool to search various websites, similar to DuckDuckGo's bangs.
### Why
It requires less typing, it is configurable, and it does not have to send requests to DuckDuckGo every time you search.
### How
The syntax is simple:
```
b <bang> <query>
```
For example, to search something on Wikipedia:
```
b w something
```
To search for this project on github:
```
b gh dbangs
```
### Installation
``` sh
git clone https://github.com/Arian-D/dbangs
cd dbangs
make install
```
### Configuration
After the installation, the configuration file will be located at `~/.config/dbangs/bangs`. By default, there are several websites available, but you're more than welcome to add or overwrite the bangs. The syntax for bangs is also simple:
```
<bang> <url> <parameter>
```

