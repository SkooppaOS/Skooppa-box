# Skooppa-box 

A vagrant box (created by [Puphpet.com](https://puphpet.com/)) to get up a running fast for developing a [Skooppa Server Environment](http://skooppa.com) and working with [appserver](http://appserver.io/) and [OrientDB](https://orientdb.com).

**NOTE:** This is only experimental and temporary. As the Skooppa PaaS is finalized, this will no longer be the proper means of development. Development will take place completely in the cloud. At least, that is the plan. Who knows, if it will stay that way. 

###What Do You Get?


Skooppa-box installs the following software automatically on the guest VM.

- OrientDB 2.1.11
- appserver 1.1.0
- PHP5.6 (PHP-FPM and CLI)
- Debian Wheezy 64bit
- Composer (globally)
- PHPUnit (globally)
- Git

and the standard packages for Ubuntu.

###Installation Instructions

**Prerequisites**

You must have a virtualization system like [VirtualBox](https://www.virtualbox.org/) and also have [Vagrant](https://www.vagrantup.com/) installed.

**Steps**

Clone or download this repo as a ZIP file on your host machine. If you used the zip, unpack the files in a directory of your choice. Remember, the directory you unpack to will also be the shared directory with the vagrant box it creates.

Once downloaded or cloned, go into the console on the host machine (or with Git Bash) and `cd` into the directory, where the `Vagrantfile` is located. Then simply enter 

`vagrant up`

**Note:** It will take approximately 15 minutes for the VM to install and initialize. 

Once you get the Puphpet "finished" screen in your console, you can log into the VM via SSH. Before that though, you'll need to set up your SSH client to read the private key, which was set up for you automatically. You can find the keys under 

`/vagrant/files/dot/ssh`

The user you'll be using is "root". 

The web server in the host browser can be found under the IP address `192.168.33.10`. 
```
http://192.168.33.10
``` 

**Working with the Graph Database**

If you want to use the web clients for OrientDB, you can do that too. 

**OrientDB:** http://192.168.33.10:2480

Also under '/home/vagrant/` you'll find the install directories for the database. ODB's console is also available there.

###Other Considerations and Options

**Other providers**(currently untested!)

VirtualBox is currently the standard virtualization system for the Guest VM. If you have a different System `Skooppa-box` supports both Parallels and VMWare Fusion. To use these, enter the `--provider`flag, when you use `vagrant up`, like this.

`vagrant up --provider parallels`

**.sh Script Files and Other File Locations**

All the initialization and startup files are located under `/puphet/files`. The initialization files are under `/exec-once`and the startup files are under `/startup-once`. If you'd like to add to these files, you may, but at your own risk.

**Custom Configuration of the Vagrant Box**

You can also customize the box too, if you'd like. Under `/puphpet` copy the `config.yaml`file and rename it to `config-custom.yaml` and save it in the same place. Make any changes you'd like in that file. There are also more possibilities to customize the `Skooppa-box` through the tools made available by Puphpet. To read more about that visit the [Puphpet website](https://puphpet.com/) (click on "Help!").

**Host File Changes**

If you want, you can also change your host file on the host machine, so you can access the `skooppa-box`via a normal URL like `http://www.skooppa-box.dev`. Search for your `hosts`file and save the following.

`192.168.33.10 skooppa-box.dev www.skooppa-box.dev`



Happy programming!
