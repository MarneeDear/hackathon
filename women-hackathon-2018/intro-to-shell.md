# Online shell emulators

Preferred for this workshop

> [Copy.sh](http://copy.sh/v86/?profile=linux3)

But if it offline we can try this one (this one has games!)

> [cb.vu](http://cb.vu/)

The emulators have limited capabilities but are good for learning and demonstrations.

# Shell help

[Explain Shell](https://explainshell.com/)

## SNAKE! (MAYBE)

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

```
help
```

What happened? You should see a list of commands. Ok cool, there are lots in here! We can do all kinds of things. The emulator is pretty nice.

### Man Pages (as in the `man`ual) and `--help`

You can all of help and a guide for any of UNIX commands with the man command. For example, in the `help` list we saw a command called `ls`. We will use this a lot to get a list of files and folders.

TRY IT OUT

```
man ls
```

First we enter `man` and then we enter the name of the command we need help with.

What happened? You should see an exaplanation of the `ls` command. 
The emulator might have given you an error. That's ok. It's just the emulator. This would have worked in a real UNIX system.

Depending on the command you might be able to add the `--help` option to mosts commands to see how to use them. 

TRY IT OUT

```
ls --help
```

The emulator probably gave you an error. That's ok. It's just the emulator. This would have worked in a real UNIX system.

# `ls` (list all files and folders)

Let's work with `ls` some more. `ls` lists files and folders.

TRY IT OUT 

```
ls
```

We probably dont see much. There is nothing in here. But let's make sure. Sometimes there are `hidden` files.

```
ls -a
```

The `-a` option tells `ls` to show all files.

Nothing in there. Thats's ok. Let's create some stuff.

# Create files and folders

Let's make a folder to keep all of our files.

TRY IT OUT

```
mkdir hackathon
```


This will create a folder called `hackathon` and then list all of the files and folders.

What's in there?

TRY IT OUT

```
ls -a
```

What's in there? Probably nothing. That's ok. Let's make some files. But first let's try some more `ls` options

## ls -l

The `-l` option gives you the long form of `ls`. Let's see what that looks like.

TRY IT OUT

```
ls -l
```

You can also combine options. Remember the `-a` option from earlier? This showed all files, including the hidden files. Let's see what that looks like.

```
ls -la
```

# touch (create an empty file)

`touch` will create a new file.

TRY IT OUT

```
touch workshop.txt
```

Let's see what happened. Do you remember what command to use?

```
ls
```
```
ls -la
```

# vi (edit a file)

`workshop.txt` is empty. But there are command line tools that will let us edit the files. One of the most common is `vi`. With `vi` you can use the keyboard to move around in the file, make edits, copy and paste, and do other editing things. Let's try it.

TRY IT OUT
```
vi workshop.txt
```

What happened? The command line turned into the vi editor. Let's try adding some text.

Try typing something.

Notice that nothing happens. This is because `vi` won't start typing until you tell it that you want to start entering stuff. That command is `i`.

TRY IT OUT 

```
hit the `i` key and then try to enter some stuff
```

Ok, now we have some content, but how do we save?

First

```
hit the `esc` key
```

Next

```
shift + colon
```
This puts a colon and a command line at the bottom of the `vi` frame, like this.
```
:
```
On that command type
```
w
```

And then hit enter.

You have just saved your file.

Ok now how do we exit `vi`?

```
shift + colon
```
At the `:` enter
```
:q
```

`q ` means `quit` the program.

Now you should be back the command line.

# Review

Great. We have done all of this stuff:

* made a directory
* created a new file
* edited the file
* listed files and folders

What are the commands for each of these tasks?

# cat and less (Display the contents of a folder)

`vi` is not the only way to see the contents of a file. We can use `cat` and `less` to dispaly the contents on the command line. 

## cat

`cat` will print all of the contents all at one

Let's try it on `workshop.txt`

TRY IT OUT

```
cat workshop.txt
```
What happened? Did you see the stuff you wrote in the file using `vi`?

Imagine the contents of that file were really long -- too long to fit on the screen? It would be a pain tri have to scroll around to see the contents. That's ok. We have a command to help us.

With `less` we can display the contents in chunks that we can page through. 

TRY IT OUT

```
less workshop.txt
```
# grep (Filer the contents of a file)

With `grep` we can search the contents to find a pattern. `grep` will display the lines that have a pattern that matches.

Let's create a file do `grep`.

Do you remember how to create an empty file?

```
touch grep.txt
```

Do you remember how to edit a file?
```
vi grep.txt
```
Let's enter a few lines of text like this
```
hello workshop
hacking is fun
bash is awesome
hackathons are awesome
```

Now save the file and exit. Do you remember how to do that?

```
:w
:q
```

Great, now let's check the content. Do you remember how to display the contents of a file?

```
cat
```
```
less
```

Ok cool. Now let's try grep. Let's find all of the lines that have the word `awesome`. 

```
grep awesome grep.txt
```
`awesome` is the `pattern` we are looking for in the text and `grep.txt` is the file we are going to search in.

What happened? Did you see the two lines?

```
bash is awesome
hackathons are awesome
```

Great. Try grep on some more patterns. What happens if you `grep` a pattern that isn't in the file?

```
grep saturn grep.txt
```

You don't get any output.

# >> and > (output redirect)

Let's say we want to create a new file with the output of the grep command we ran above? We can use an output redirect.

`>` will create a file and write to it, or if the file exists, it will overwrite the file.

`>>` will append the output to the file

Let's use `>` to create a new file with the contents from `grep`.

TRY IT OUT

```
grep awesome grep.txt > awesome.txt
```

What happened? How can I check the file?

```
cat awesome.txt
```

Did you see the two lines? Great.

Let's use `>>` to append the output to the file.

```
grep 
hellp grep.txt > awesome.txt
```
What happened? How can I check the file?

```
cat awesome.txt
```

Did you see the `awesome` lines and the `hello` lines?

# | (pipe)

We can combine commands with the `pipe` operator. That is this characters `|`. It is right above the `Enter` key.

Let's try combining `cat` with `grep`. Let's `pipe` the output of `cat` to the `grep` command.

TRY IT OUT

```
cat awesome.txt | grep hello
```

Did you see this?

```
hello workshop
```

Great. You can pipe any commands together as long as the output of one command can be processed by the next command.

What if we want to create a new file with the contents of the pipeline we wrote above? How would you do that?

TRY IT OUT

```
cat awesome.txt | grep hello > hello.txt
```

How do we see what is inside `hello.txt`?

TRY IT OUT

```
cat hello.txt
```

Great!

# Review

What commands did we use to do these things

* created a bunch of files and added content to them without having to type it
* searched files for patterns
* combined commands

# cd and pwd (change directory and present working director)

We have created files and listed files and folders. What if we wanted to create more folder and navigate to them like we do in Windows File Explorer or Mac Finder? We have a command for that too.

First let's find out where we are.

TRY IT OUT

```
pwd
```

What happened? You saw the `path` to where you are in the `filesystem`.

```
/hackathon
```

With `cd` we can go up to the folder above or we can go to a folder we specify. We can also specify a longer path to folders in other places. Let's try doing that. Since the emulator doesnt have many folders, let's create some.

Do you remember the command to do that?

TRY IT OUT

```
mkdir one
mkdir two
mkdir three
```

Let's check that the folders were created. Do you remember how to do that?

TRY IT OUT

```
ls -la
```

Let's use `cd` to go into the `one` folder. Can you guess what the command looks like?

TRY IT OUT

```
cd one
```

Ok now let's see what's in here.

TRY IT OUT

```
ls -la
```

Let's find out where we are. Do you remember the command?

TRY IT OUT

```
pwd
```

Did the output look like this?

```
hackathon/one
```

Ok great. How do I get back to the hackathon folder? There are two ways. 

```
cd ..
```

The `..` tells `cd` to go up one level.

Or, we can tell `cd` explicitly the folder path like this.

```
cd /hackathon
```

TRY IT OUT


```
cd ..
```

Let's check where we are.

```
pwd
```

Did you see this?

```
/hackathon
```

Great!

# Tab complete

Most commands lines will have something called `tab complete`. `Tab complete` will automatically complete your typing a file name or path for you. 

TRY IT OUT

Let's `cd` into `two`, but instead of typing out `two` just type the letter `t` and hit `tab`. This should automatically type the word `two` for you.


# wc (word count) (MAYBE)

`wc` let's use count the number of words or lines in a file. Let's count the words in `grep.txt`.

Can you guess what that command will look like?

TRY IT OUT

```
wc grep.txt
```

What happened? You should see a count of all of the words in the file.

What if I want











