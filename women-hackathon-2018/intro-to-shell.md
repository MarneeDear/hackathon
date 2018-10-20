# Online shell emulators

Preferred for this workshop

> [Copy.sh](http://copy.sh/v86/?profile=linux3)

But if it is offline we can try this one (this one has games!)

> [cb.vu](http://cb.vu/)

The emulators have limited capabilities but are good for learning and demonstrations.

NOTE: Since MacOS is built on a UNIX system, you have a built-in command line shell that will let you do everything in this workshop. It will be a little easier to follow along if you use the emulator, but any of the commands we use today will work in `Terminal`.

Note: Windows has a command line too, but it is an operating system called DOS and we won't be learning those commands today. There are some programs you can install to get a Linux command-line on Windows. Come talk to me after if you are interested.

# Setup the emulator

## Download my files from Github and send to the emulator

1) Go to `https://github.com/MarneeDear/hackathon`
2) Click `Clone or Download` and select Download ZIP. Download it to where you would like but remember where you put it.
3) Unzip the folder
4) Go back to the emulator and select Choose Files. 
5) Using the explorer, find the folder you unzipped. Go into women-hackathon-2018.
6) Select `too-long-log`.

# UNIX command line help

[Explain Shell](https://explainshell.com/)

# What is the comand, anyway?

The command line is an interface to your computer's operating system. It provides a bumch of commands that let you do stuff with your computer and its files. This includes stuff like:

* list all of the files
* create a file
* edit a file
* move files around
* display the contents of files
* search the contents of files
* setup user accounts
* process data files
* play games
* install other programs that run on the command line
* run scripts that can automate repetitive tasks
* do basic system administation

And lots more ... .

# What's so good about it?

* Not all operating systems have a graphical interface
* Sometimes the graphical tools are limited and clunky
* The command line is not only for programmers and system admins, scientists use it to automate their data processing and run their simulations. The command line is so important to their works that we run regular workshops teaching grad students how to use the command line.

# `whoami`

In the emulator you are something called `root`.

## `root` 

You'll hear UNIX/Linux users saying things like:

> I need `root` access to that machine.

> We've been PWNED! The hacker gained `root` access to the main server.

> Those files only allow `root` access.

`root` is the name of the user in an UNIX system that has access to everything. This user is very powerful and should be protected because `root` can change or delete any file, and `root` can install and run any program.

In your shell emulator you are `root`! You can do anything the emulator has available.

You will also hear `root` refer to the filesystem. As in

> The file is in the `root` directory.

The is the very beginning of the file system. On Windows this is often called the C:\ drive but might have any letter. 

### `--help`

Depending on the command you might be able to add the `--help` option to mosts commands to see how to use them. 

TRY IT OUT

```
ls --help
```

The emulator might have given you an error. That's ok. It's just the emulator. This would have worked in a real UNIX system.

# cd and pwd (change directories)

We can use the emulator to upload files. The emulator puts them in a folder called `mnt`. You will often see things called `mnt` in UNIX. `mnt` stands for `mounted` as in a mounted drive. This is something that you have to attach to the filesystem. These could be things like:

* a USB stick
* a external hard drive
* an extra hard drive
* a virtual hard drive
* a networked filesystem

We will be uploading files to the emualtor, so let's go to the `mounted` drive to get started.

To do this we can used the `cd` command. This stands for change directories. This will change our location in the filesystem like we do with Windows File Explorer or Mac Finder.

TRY IT OUT

```
cd /mnt
```

Now that we have changed directories let's make sure we are in the right place. We can use a command to find out.

`pwd` stands for `present working directory` and will show us the path from the root of the filesystem 

# `ls` (list all files and folders)

Let's work with `ls` some more. `ls` lists files and folders.

TRY IT OUT 

```
ls
```

You should see the file we uploaded `too-long-log`. 

Sometimes there are `hidden` files.

The `-a` option tells `ls` to show all files.

TRY IT OUT

```
ls -a
```

Not much to see. Thats's ok. Let's create some stuff.

# `mkdir` (create files and folders)

Let's make a folder to keep all of our files.

TRY IT OUT

```
mkdir hackathon
```

This will create a folder called `hackathon`.

Let's see what files and folders we have now.

TRY IT OUT

```
ls -a
```

You should see `hackathon` listed. What is inside hackathon? To do that we can pass the name of the folder to the `ls` command.

TRY IT OUT

```
ls -a hackathon
```

What did you see? Probably nothing. That's ok. Let's make some files. But first let's try some more `ls` options

## `ls -l`

The `-l` option gives you the long form of `ls`. Let's see what that looks like.

TRY IT OUT

```
ls -l
```

Notice that we see a whole bunch of new info. We see the date-time the folder was created and the permissions on that folder. Notice everything is assigned to `root`.

You can also combine options. Remember the `-a` option from earlier? This showed all files, including the hidden files. Let's see what that looks like.

```
ls -la
```

We can dombine options for most UNIX commands. What can we do to find out what options a command has? Do you remember?

```
--help
```

# Tab complete

Most commands lines will have something called `tab complete`. `Tab complete` will automatically complete your typing a file name or path for you. 

TRY IT OUT

Try the ls command on the `hackathon` folder again but this time just type the first letter and then hit `tab`. 

What happened? Did the command line autocomplete the folder name for you?

# `touch` (create an empty file)

`touch` will create a new file (and some other things like update the last changed date on the file).

First let's change directories into the `hackathon` folder. Do you remember the command for this? Don't forget `tab complete`.

TRY IT OUT

```
cd hackathon
```

Check where you are. How do we do that?

```
pwd
```

Now let's use `touch`.

TRY IT OUT

```
touch workshop.txt
```

Let's see what happened. Do you remember what command to use to list files and folders?

```
ls
```
```
ls -la
```

Did you see the new file? If you used the long option you should also see today's date and time.


# Review

Can you remember the commands for these tasks?

* make a directory
* create a new file
* edit the file
* list files and folders
* autocomplete a file or folder name

# up and down arrows (history)

We have entered a lot of commands. What if I want to re-do a command I had entered earlier? Would I have to re-type it? No! Hit the up arrow and you will see the last command you entered. Keep hitting the up arrow and you can go through your whole history. You can also use the down arrow. 

TRY IT OUT

```
up arrow
down arrow
```

You can also see a list of your command history. Can you guess what that command is?

TRY IT OUT

```
history
```

# `cat` and `less` (Display the contents of a folder)

`vi` is not the only way to see the contents of a file. We can use `cat` and `less` to display the contents on the command line. 

## `cat`

`cat` will print all of the contents all at one

Let's try it on `workshop.txt`

TRY IT OUT

```
cat workshop.txt
```
What happened? Did you see the stuff you wrote in the file using `vi`?

Imagine the contents of that file were really long -- too long to fit on the screen? It would be a pain to have to scroll around to see the contents. That's ok. We have a command to help us.

Try `cat` again but this time use `too-long-log`.

TRY IT OUT (DONT FORGET TAB COMPLETE)

```
cat /mnt/too-long-log
```

Whoa! That's a lot of stuff. How can we see the contents in a better way?

## `less`

With `less` we can display the contents in chunks that we can page through. 

Let's try `less` on the `too-long-log` we sent to the emulator earlier. Do you remember where it was stored?

TRY IT OUT

```
less /mnt/too-long-log
```

Now it only show a set of lines at a time. Hit the `space-bar` to see the next page. When you are done looking at the pages hit `q` to guit `less`.

There is a lot of stuff in this file and its hard to read and sort through, even with `less`. But that's ok. We have commands to help with that.


# grep (filter and search the contents of a file)

With `grep` we can search the contents to find a pattern. `grep` will display the lines that have a pattern that matches what we tell it.

Let's create a file do `grep`.

Do you remember how to create an empty file?

```
touch stuff.txt
```

Do you remember how to edit a file?

```
vi stuff.txt
```

Let's enter a few lines of text like this.

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

TRY IT OUT

```
grep awesome stuff.txt
```

`awesome` is the `pattern` we are looking for in the text and `grep.txt` is the file we are going to search in.

What happened? Did you see the two lines?

```
bash is awesome
hackathons are awesome
```

Great. Try `grep` on some more patterns. What happens if you `grep` a pattern that isn't in the file?

```
grep saturn stuff.txt
```

?

### How do people use grep?

I use grep a lot when I am looking through logs files for certain error messages, or when I only want the logs for a certain date and time. There are lots of applications of grep, but log parsing is a common system administrator task.

Researchers often use grep to process their data files.


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



# `mv` and `cp` and `rm` (moving files, copying files, deleting files)

We can also move, copy, and delete files and folders like we do in File Explorer.

First let's create some folder and files to work with. Do you remember what command will create folders (make directories)?

DON'T FORGET TAB COMPLETE

TRY IT OUT

```
mkdir move
mkdir copy
```

Let's check the folders are there. Remember the command?

```
ls -ls
```

Do you remember what command we can use to create files?

TRY IT OUT

```
touch move-me
touch copy-me
```

Let's check the files are there. Remember the command?

```
ls -la
```

Let's move the file into the `move` folder. To move files we use the `mv` command.

TRY IT OUT

```
mv move-me move
```

Let's see what happened. How do we list the contents of the `move` folder?

```
ls -la move
```

Did you see your file? What about the folder where we created it? Do we see it there?

```
ls -la
```

`move-me` shouldn't be there.

## `cp`

Let's copy `copy-me` into the copy folder. To do this we use the `cp` command. This will make a copy of a file and put in a location you tell it to and with the name you tell it.

Let's copy `copy-me` into `copy` and call it `copy-me-copy`.

TRY IT OUT

```
cp copy-me copy/copy-me-copy
```

Let's check to see if the file is still here.

```
ls -la
```

You should see the copy file.

Let's check to see if the file was copied.

```
ls -la copy
```

Do you see the copied file?

## `rm`

Let's delete the `move-me` file. We can delete files with the `rm` command. `rm` stands for remove.

```
rm move/move-me
```

Let's see if that worked.

```
ls -la
```

`rm` can also delete entire folders and their contents. We use option `-r` to do this recursively (meaning it will delete the folder and any file or folder inside that folder).

TRY IT OUT

```
rm -r copy
```

# >> and > (output redirect)

Let's say we want to create a new file with the output of the grep command we ran above. To do that we can use an `output redirect`. It is called this because this command will take the output of one command and instead of displaying it to the screen it can send it to a file.

`>` will `create` a file and `write` to it, or if the file exists, it will `overwrite` the file.

`>>` will `append` the output to the file

Let's use `>` to create a new file with the contents from `grep`.

TRY IT OUT

REMEBER UP ARROW

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
grep hello grep.txt > awesome.txt
```
What happened? How can I check the file?

```
cat awesome.txt
```

Did you see the `awesome` and `hello` lines?


# `wc` (word/line count)

`wc` let's use count the number of words or lines in a file. Let's count the words in `grep.txt`.

Can you guess what that command will look like?

TRY IT OUT

```
wc grep.txt
```

What happened? You should see a count of all of the words in the file.

How about counting lines instead. We can use the `-l` option to tell `wc` to count lines.

TRY IT OUT

```
wc -l grep.txt
```

# `tail` and `head` (see the last few line or the first few lines)

`tail` lets us see the bottom lines of a file. 

TRY IT NOW

```
tail /mnt/too-long-log
```

You can also tell it how many lines you want to see, like this.

TRY IT OUT

```
tail -1 /mnt/too-long-log
```

This tells `tail` to only show the last line in the file.

`head` lets us see the top lines of a file.

TRY IT NOW

```
head /mnt/too-long-log
```

You can give head line options too. Try some line number options on `head` and `tail`.

```
tail -10 /mnt/too-long-log
```

```
head -100 /mnt/too-long-log
```

That's great but what if I am looking for specific word or a date and time? No problem. There is a command for that.


# `vi` (edit a file)

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
On that command-line type
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

There are lots of commands in `vi` that you can learn, but I will leave that to you.

# cd and pwd revisited (change directory and present working directory)

We have created files and listed files and folders. What if we wanted to create more folders and navigate to them like we do in Windows File Explorer or Mac Finder? We used that command earlier. Do you remember what it was?

First let's find out where we are.

TRY IT OUT

```
pwd
```

What happened? You saw the `path` to where you are in the `filesystem`.

```
/mnt/hackathon
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
/mnt/hackathon/one
```

Ok great. How do I get back to the hackathon folder? There are two ways. 

```
cd ..
```

The `..` tells `cd` to go up one level.

Or, we can tell `cd` explicitly the folder path like this.

```
cd /mnt/hackathon
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
/mnt/hackathon
```

Great!

# Writing a script

We don't have to write our commands to the commands line. We can put them in a file and then run the file. This is called a script because the operating system will follow it and do the commands. This lets us do things like:

* automate repetitive tasks
* reproduce the same steps every time
* share our work with others

Let's upload the sample script file and try running it. Click Choose Files and select `automate-me.sh` to send to the emulator. (The `.sh` extension means it is a shell script.)

Change directories to go up one level so that you are now in `/mnt`.

```
cd ..
```

List the files in the folder.

```
ls -la
```

Do you see that file? Great. Let's display the contents of the file.

```
cat automate-me.sh
```

There is a bit in there. The first line tells the command line what shell to use to run the script. The `echo` lines will output the text to the screen. We have been using those other commands today.

Can you guess what this script will do? Let's try running the script to see what it does.

TRY IT OUT

```
./automate-me.sh
```

## Exercise

Let's try a bigger problem.

Remember that ugly log file we used `less` with? Let's try some commands to filter the file and find out some things about it.

This is a log of messages from a PHP web application I work on. I need to find out how many Warnings we got at a certain time.

In our script let's add some lines.

1) Output the total number of lines.
2) Find only the lines that have `Warning` in them
2) From only the `Warnings` lines, produce a new file with the lines only corresponding to time `14:53`
3) Output the total number of lines in the new file
4) Output the last line in the new file
5) Anything else you can think of!

Can you use pipe?
Can you use output redirect?
Can you use grep?
Can you show messages to keep track of what is happening?

# Shell on Windows

There are at least two ways to get a UNIX shell on Windows.

1) install the Windows Subsystem for Linux
2) install git-bash













