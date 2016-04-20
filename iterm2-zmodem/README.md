# Introduction
Help you use ZModem transfers from your OSX.Transfer file with SSH in 
iTerm2

# Installation
Setup is pretty simple:

 

 1. Install lrzsz on OSX: `brew install lrzsz`
 2. Save the **iterm2-zmodem**  in **/usr/local/bin/**
 3. `chmod a+x iterm2-zmodem`
 4. Edit **Triggers** in iTerm 2 like so:
<pre>
    Regular expression: \*\*B0100
    Action:             Run Coprocess
    Parameters:         /usr/local/bin/iterm2-zmodem sz

    Regular expression: \*\*B00000000000000
    Action:             Run Coprocess
    Parameters:         /usr/local/bin/iterm2-zmodem rz
</pre>

To **send** a file to a remote machine:

1. Type `rz` on the remote machine
2. Select the file(s) on the local machine to send
3. Wait for the coprocess indicator to disappear

The **receive** a file from a remote machine

1. Type "`sz filename1 filename2 … filenameN`" on the remote machine
2. Select the folder to receive to on the local machine
3. Wait for the coprocess indicator to disappear


