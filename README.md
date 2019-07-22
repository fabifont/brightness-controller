# brightness-controller

Simple bash script to control the brightness of your screen

## Installation

### Choose a folder in which clone the repo
- You can create a folder in your home called "bin" opening the terminal and typing

    ```
    mkdir bin
    ```
- Or you can use your default folder for scripts (if you already have one)

### Clone the git repo

Go into the folder (```cd bin```) and follow one between the methods below

- SSH
    - 
    ```
    git clone git@github.com:xFabifont/brightness-controller.git
    ```
- HTTPS
    - 
    ```
    git clone https://github.com/xFabifont/brightness-controller.git
    ```

### Make the script executable

Enter into the script folder with the command

```
cd brightness-controller
```

Then make the script executable with the command

```
chmod +x brightness-controller.sh
```

### Add the folder to PATH to run the script everywhere

Open your bashrc file configuration with the command

```
nano ~/.bashrc
```

Go to the end of the file and add these rows

```
# Add brightness-controller folder to PATH
export PATH=$PATH:~/bin/brightness-controller
```

If you have already exported your PATH to add the folder you can simply put a ":" and add the folder like the example below

```
export PATH=$PATH:~/example:~/bin/brightness-controller
```
### Reload your bashrc file configuration

```
source ~/.bashrc
```

## Use the controller

Open the terminal and tpye 

```
brightness-controller.sh
```

You will be asked to choose a value between 0.1 and 1.0 and then you have it 