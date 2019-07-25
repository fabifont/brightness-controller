# brightness-controller

Simple bash script to control the brightness of your screen.
The installer will automatically put the script into your bin directory and if it doesn't exist it will create it, then it will delete the folder.

## Installation

### Clone the repo

```
git clone https://github.com/xFabifont/brightness-controller.git
```

### Run the installer

Enter in the folder with the command ```cd brightness-controller``` and run the command below
```
sh install.sh
```

### Add the "bin" folder to PATH to run the script everywhere

Open your bashrc file configuration with the command

```
nano ~/.bashrc
```

Go to the end of the file and add these rows

```
# Add bin folder to PATH
export PATH=$PATH:~/bin
```

If you have already exported your PATH to add the folder you can simply put a ":" and add the folder like the example below

```
export PATH=$PATH:~/example:~/bin
```
### Reload your bashrc file configuration

```
source ~/.bashrc
```

## Use the controller

### Style

The command must be run with a parameter ```brightness-controller.sh 'parameter'``` 

### Set a specific value between 0.1 and 1.0

Example :
```
brightness-controller.sh 0.6
```
### Increase / Decrease by a step of 0.1

The parameter is '-' or '+'
Example : 
```
brightness-controller.sh +
```

So you can create a keyboard shortcut on your DE / WM which runs the command "brightness-controller.sh -" to decrease the brightness and "brightness-controller.sh +" to increase it