# Online shell emulators

Preferred for this workshop

> [Copy.sh](http://copy.sh/v86/?profile=linux3)

But if it offline we can try this one (this one has games!)

> [cb.vu](http://cb.vu/)

The emulators have limited capabilities but are good for learning and demonstrations.

# Shell help

[Explain Shell](https://explainshell.com/)

## SNAKE! (MAYBE)ls |

Let's play snake. 

TRY IT OUT

```snake```

What happened? We played a nice game of snake. 

Hit `esc` key or `q` to stop the game and go back to the command line.

# What is the shell, anyway?

The shell is an interface to your computer's operating system. It provides a bumch of commands that let you do stuff with your computer and its files. This includes stuff like:

* list all of the files
* create a file
* edit a file
* move files around
* display the contents of files
* search the contents of files

And lots more ... .

# What's so good about it?

* Not all operating systems have a graphical interface
* Sometimes the graphical tools are limited and clunky (ie theyu suck), but you can combine some shell commands to do more powerful things, like automate repetitive tasks or process a data file.
* The command line is not only for programmers and system admins, scientists use it to automate their data processing and run their simulations. It's so important that we run regular workshops teaching grad students how to use the shell.

# Root 

You'll hear shell users saying things like:

> I need `root` access to that machine.

> The hacker gained `root` access to the main server.

> Those files only allow `root` read/write access.

`root` is the name of the user in an UNIX system that has access to everything. This user is very powerful and should be protext because `root` can change or delete any file, and `root` install and run any program.

In your shell emulator you are `root`! You can do anything the emulator has available.

# What can I do in here, anyway?

Let's find out.

## Help

The emulator might have a `help` command that will list all of the other commands the emulator can do.

### TRY IT OUT ()

```help```

What happened? You should see a list of commands. Ok cool, there are lots in here! We can do all kinds of things. The emulator is pretty nice.

### Man Pages (as in the `man`ual) and `--help`

You can all of help and a guide for any of UNIX commands with the man command. For example, in the `help` list we saw a command called `ls`. We will use this a lot to get a list of files and folders.

TRY IT OUT

```man ls```

First we enter `man` and then we enter the name of the command we need help with.

What happened? You should see an exaplanation of the `ls` command. 
The emulator might have given you an error. That's ok. It's just the emulator. This would have worked in a real UNIX system.

Depending on the command you might be able to add the `--help` option to mosts commands to see how to use them. 

TRY IT OUT

```ls --help```

The emulator probably gave you an error. That's ok. It's just the emulator. This would have worked in a real UNIX system.

# `ls`

Let's work with `ls` some more. `ls` lists files and folders.

TRY IT OUT 

```ls```

We probably dont see much. There is nothing in here. But let's make sure. Sometimes there are `hidden` files.

```ls -a```

The `-a` option tells `ls` to show all files.

Nothing in there. Thats's ok. Let's create some stuff.

# Create files and folders

Let's make a folder to keep all of our files

TRY IT OUT

```
mkdir hackathon
ls 
```

This will create a folder called `hackathon` and then list all of the files and folders.


