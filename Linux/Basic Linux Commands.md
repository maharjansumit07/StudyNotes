What is the sign displayed at first terminal login?

"$" -- typically a default command prompt for regular account with standard user permissions and does not have administrative or root access. Users can execute most commands, but may not have the necessary permissions to perform certain administrative tasks.

" # "  -- a default command prompt for the root or administartive user account. The user or root has full administrative privileges and can execute any commands. it has the highest level of access and can perform the administartive tasks such as installing, modifying and managing user accounts. 

----------------------------------------------------------------------------------------------------------------------------------------
Package manager			
ubuntu/mint -- apt	

centos/rocky linux -- dnf , yum		

fedora - yum, dnf		

arch - pamac, yay, paru,, flatpak		

----------------------------------------------------------------------------------------------------------------------------------------
Command Accesibility (to get details about commands)

--help or /h  -> to learn about the commands , usually used after the command to get more detail.
info    ->  it provides detailed hyperlinked documentations. The pages are organized into chapters and sections. 
whatis  ->  will display one line summary of the purpose of the command. It can be very helpful when we want the description of the command without going into the detailed syntax or options. 
man     ->  short of "Manual", provdies the standartd reference documentation 

----------------------------------------------------------------------------------------------------------------------------------------
User Group and Management

Whoami => to view the active user using the shell.
su  => switch user
useradd  => to add users.
groupadd => to add group
passwd  => to change password.
groups => to manage user groups. Groups are collections of users that share permissions and access rights. 
usermod => to modify user account properties, such as primary group, login shell,, home directory and other settings. 
chage  => to manage user account password and aging information .
chfn  => change User information 
chsh  => to change user's default login shell. the login shell is the program that is executed when a user logs in to the system.
getent  => used to retrieve information about users, groups, hosts, networks, protocols, services, and other database entries. It gets entries from Name service switch libraries.
cut => a powerful tool to extract specific fields or columns from input text data, commonly used in shell scripts and command line operations to manipulate data. 
awk => widely used for data manipulations and extractions. 
sed => can be used for finding and replacing operations, deleting or adding lines and more. 

-------------------------------------------------------------------------------------------------
chage
-I  ==> inactive,    
-d  ==> last date       chage -d 2023-12-12 <username>      , last password change date
-E  ==> Expire date     chage -E 2024-05-31 <username>
-l  ==> list            chage -l <username>
-m  ==> minimum day     chage -d 2024-05-29 <username>    
-M  ==> Maximum day     chage -M -1 <username>
-W  ==> warning day.    chage -W 7 <username>

usermod
usermod -a -G group1,group2 username           ==> Add user to groups

usermod -G group1,group2 username              ==> remote users from all group except the primary group.
usermod -g <new group name> username           ==> to change user's primary group
usermod -s /bin/bash username                  ==> to change users login shell.
usermod -L username                            ==> to lock or disable the user account     
