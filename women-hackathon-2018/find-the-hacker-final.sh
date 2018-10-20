#!/bin/sh
echo "Help me find my hacker!"
echo "We've been PWNED!!! The hacker got root access on the our server :("

# LETS FIND OUT WHAT HAPPENED

echo "create a directory called hack-logs in the /mnt path"
mkdir /mnt/hack-logs

echo "got to (change directories) to /mnt/hack-logs"
cd /mnt/hack-logs

echo "list all files and folders and let's see the last date modified"
ls -la

echo "HURRY! Please save us!!"

echo "move the logs into hack-logs"
mv /mnt/server.log /mnt/hack-logs

echo "check to make sure the files are there. list the files in hack-logs"
ls -la /mnt/hack-logs

echo "make a copy to keep the original for auditing purposes. "
cp access.log access-copy.log

echo "inspect the file. get an idea of what's in it"
cat access-copy.log

echo "It looks like a dictionary attack! The hacker is trying to guess a user's password"
echo "let's find out if she guessed one correctly"

echo "get all of the logs with failed login attempts"
cat access-copy.log | grep "login failed"

# There is too much to see on one screen

echo "who has mulitple failed login attempts?"

echo "let's create a file with just the failed logins"
cat access-copy.log | grep "login failed" > login-failed.log

echo "how many do we have?"
cat login-faile.log | wc -l

echo "we think the breach happened at 10:14!!!"
echo "can we see who logged in at 10:14?"
cat access-copy.log | grep "10:14"

echo "It might have been Blake's user that was compromised. Look at all of those failed logins!"

# HYPOTHESIS

echo "did Blake also have a successful login at this time?"
echo "let's get all of Blake's login attempts"
cat access-copy.log | grep "blake" > blake.log

echo "let's also see all of his logins at 10:14"
cat blake.log | grep "10:14" > blake-1004.log

echo "does Blake have a successful login attempt?"
cat blake-1004.log | grep "successful login"

echo "YES! I think you are on to something!"
echo " If our hypothesis is right then we should also see root impersonate right 
after the successful login at 10:14.2"
cat access-copy.log | grep "10:14.3"

# Blake's account was likely compromised. Blake needs some training in password safety


echo "Send the evidence to the Lead Forensic Investigator. She likes to see all of your work for auditing and reproducibility."
echo "make a new directory with the results"
mkdir /mnt/hack-evidence
echo "copy all of our evidence files to this folder"
cp /mnt/access.log /mnt/hack-evidence/access.log
cp blake.log /mnt/hack-evidence/evidence-blake-logins.log
cp blake-1004.log /mnt/hack-evidence/evidence-blake-logins-1004.log

echo "cleanup files -- the sys admins dont like it when forensics leave their files lying around"
cd /mnt
rm -r hack-logs

