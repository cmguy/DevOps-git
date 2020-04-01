## vmeWA.bsh Usage and Installation

### Overview
This script is a copy of DevWA.bsh augmented to create amd support a Virtual Machine (VM) in your workstation memory.

The script is currently configured to provide a working example of a CentOS7 operating system with Apache installed and a html5 compliant website.

It took 3 minutes, 52 seconds to run on a windows 10 workstation and 3 minutes 17 seconds on a mac workstation March 19, 2020.


### Usage
This script is designed to set up a workarea on your workstation with a VM running in the workstation memory. It uses the [cmguy](https://github.com/cmguy)/[CM-System-Site](https://github.com/cmguy/CM-System-Site) git repository to provide
a working example of Continuous Integration and Deployment (CI/CD) automation. An example that can be adopted and configured for any given git bare repository.

The following components of this template need to be reviewed and modified for specific repository CI/CD needs. They include:
* CM-System-Site/deploy directory - Where the VM is managed from
* CM-System-Site/README.txt - Verbose documentation on the directory in previous bullet
* CM-System-Site/deploy/vm-system-service.bsh - Script that controls the orchestration of creating and managing the VM
* CM-System-Site/app/bin/package-deploy.bsh - Script for creating the deployment package resulting from the CI activities
* CM-System-Site/app/vagrant/bootstrap.sh - Script for building application specific requirements on operating system
* CM-System-Site/app/vagrant/Vagrantfile - Configuration specifics for creating and installing VM in workstation memory

In order to create your workstation repository you need to create a fork of the [cmguy](https://github.com/cmguy)/[CM-System-Site](https://github.com/cmguy/CM-System-Site) on your Github account.

The latest approved baselines are represented with branches in the workstation repository that point to the cooresponding branches in the main repository the Github forked repository was copied from.

The workstation workarea repository setup by this script contains the latest approved baselines and release sets at the time of execution. These are established from the main repository the forked repository was copied from.

The main repository the forked repository is copied from contains the latest approved baselines and release sets. These baselines and release sets are validated and approved with DevOps Continuous Integration (CI) and Continuous Deployment (CD) coordination.

This script creates a feature branch for developers to create change in. It is named with a combination of the basis it is created from and the change record reference the developer is working on.

For more details on how this script is used refer to the [README.md for this repository](https://github.com/cmguy/DevOps-git/tree/master), **Product Change** section.

### Installation
If you have not installed DevWA.bsh as instructed in [README.md](https://github.comcast.com/PDX/DevOps-git/tree/master/app/developer-workarea) do so now.

* Install the [VirtualBox](https://www.virtualbox.org/) application on your workstation.
* Install the [Vagrant](https://www.vagrantup.com/) application on your system.

Install [vmeWA.bsh](https://github.com/cmguy/DevOps-git/blob/master/app/developer-workarea/vmeWA.bsh) in the ~/bin directory of your workstation and configure as follows:

* Setup a TargetDir in your workstation repo at ~/ that matches the value for Script configuration variable TargetDir="vme-repos"
* Set Script configuration variable GHEUserID=userid (to your Github userid)

### Execution
Run the following command in a git command line terminal from your workstation ~/ directory:

 $ vmeWA.bsh cmguy CM-System-Site mr develop CR-reference
 
### Conclusion Notes
 
To run the CM-System-Site website on the VM in your workstation memory, enter the following into the address window of your browser:

http://127.0.0.1:4567/
 
Run the following command line command in your ~/bin directory on your workstation for a view of what was changed DevWA.bsh to vmeWA.bsh to enable Virtual Machine Enhancement on your workstation:

$ diff DevWA.bsh vmeWA.bsh

The following logs exist in your workstation repo to support your CI/CD automation efforts:

* ~/vme-repos/CM-System-Site/deploy.ForkedWA.log
* ~/vme-repos/CM-System-Site/deploy/BuildVM.log

There are many support possibilities from [Vagrant](https://www.vagrantup.com/). Click on the "Find Boxes" button for enviroment possibilities. Be sure to execute the following command in a git command line terminal on your workstation:

$ vagrant list-commands
