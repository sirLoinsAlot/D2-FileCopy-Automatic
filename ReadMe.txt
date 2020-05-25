#################################################################################
###									      ###
###  			   D2 File Copy by sirLoinsAlot			      ###
###									      ###
#################################################################################

     !!! - THIS IS FOR WINDOWS AND HAS ONLY BEEN TESTED IN WINDOWS 10 - !!!

Please read through this file carefully and complete the instructions listed 
below, in order, to ensure the correct set up of this process. If you do not
know what you are doing then please do not make any changes to any of the 
files except Configuration.ps1 and FilePath.txt. Make sure you read this whole 
file before proceeding and manually back-up your save files before using this.

Overview:
I initially created these scripts to backup my PlugY save as I have it set up on
both my desktop and my laptop. I was unable to change the save path using the 
string in the PlugY.ini file and I subsequently sought a way to do it myself.
After trying several other methods I decided it would be quicker and easier for
me to just write some scripts that take care of it for me and this is what came
of it. The reason they are setup like they are is because I am a little bit
obsessive compulsive when it comes to my D2 game data, so while it is a little
bit overkill, it is just the way I chose to go about it.

If you wish to get in touch with me regarding these scripts you can email me
at sirloinsalot@outlook.com, I will do my best to get back to you as soon as
possible.

This is the full, automated version of the file copy. There is also a manual
cut-down version available on my gitHub if you would prefer it.

What is Happening:
These scripts work by starting both batch files upon Windows start-up. They
will then run continuously in the background; first waiting for the D2SE.exe
to start running, which will trigger the first script, which then takes the 
files from your backup location and copies them over the local files. Then again 
when the executable stops running (after exiting Diablo 2), it will trigger the 
second script and copy the local files to the backup location. If you have 
versioning set (see below), the shutdown file will first copy the backup 
location to the next version control folder first before copying the files over 
to the main backup.

Note: When getting file paths for the configuration files, my suggestion is to
	open the folder using file explorer and copy it from the address bar.

Instructions:
 - Open the 'Run' window by pressing the Windows key and 'R' at the same time

 - In the dialog type 'shell:startup' and press Enter

 - This will open up a File Explorer window, copy into here the vbscript file 
	'D2-FileCopy.vbs' and the 'FilePath.txt' file

 - Select a location on your machine Documents or Desktop for example, and copy 
	the 'D2-FileCopy' folder there

 - Open the 'FilePath.txt' file in the 'shell:startup' directory and copy in
	the filepath that you have just chosen for the D2-FileCopy folder

 - Start the Task Manager ('Ctrl' + 'Shift' + 'Esc'), click on the 'Start-up'
	tab and locate in the list the 'FilePath.txt' file we've added. Now
	click on it and select 'Disable'. This will prevent the file being
	opened when you start Windows

 - Now it's time to configure everything for your machine by altering the text
	configuration file. Here we will list the options and what to do with
	each of them:
	 - localSavePath: Filepath for your plugy save files
	 - backupSavePath: Filepath you wish to back the files up to 
	 	(i.e. OneDrive filepath)
	 - versioningOn: This is used to turn version control on and off
	 - versioningPath: Filepath for your versioned copies of previous backups

Warning:
When your PC starts up you will receive a UAC (user account control) dialog pop
up to enable the running of the vbscript, click yes to set the backup tasks
running.
When you start up the D2SE client and also exit the game, you will see a blue
powershell terminal window briefly appear and close. This indicates that the
respective scripts have run.
Bear in mind that if you re-run the D2SE program without having restarted your 
machine, the scripts will not be running and must be manually restarted by
clicking on the 'D2-FileCopy.vbs' file in the 'shell:startup' directory.
If saving a backup to cloud storage you need to ensure it is fully uploaded
before shutting down your machine - for me this just means waiting 30 seconds.


These scripts were initially thought of and created by me, sirLoinsAlot. They are
free for you to use and I hope they come in as useful for you as they did me :)

See you in Hell D2 fans!

################################# Disclaimer ####################################
While I have done my best to make this a useful tool set, to aid in the backing 
up of Diablo 2 game files, I take no responsibility for any consequences of
you or anyone else using the files included in this set. Please use with caution!
#################################################################################
