## DevOps-git

### Table of contents
1. [Summary](#Summary)

     - [Change Contributor Working Environment](#CCWE)   
     - [Git Repository Premise](#GRP)
     - [Git Enhanced Change Management](#GECM)
     
2. [Configure for Github Usage](#CfGU)
3. [Produce Change](#PC)
4. [Approve Change](#AC)
5. [Process Production Release](#PPR)

### Summary <a name="Summary"></a>
The purpose of this repository is to support a DevOps culture with trusted [git](https://git-scm.com/) Subject Matter Expertise.

:notebook: ***Automation Tools***:
- [DevWA.bsh](https://github.com/cmguy/DevOps-git/tree/master/app/developer-workarea) is maintained in this repo to support Change Contributors (developers) and DevLeads (Change Coordinators). See **Produce Change** section below for details.
- [vmeWA.bsh](https://github.com/cmguy/DevOps-git/blob/master/app/developer-workarea/vmeWA.md) - Virtual Machine (VM) Enhanced Work Area - Same as DevWA.bsh augmented with VM running in memory that mimics production environment.

:point_right: ***NOTE***:
* Above links provide general Overview, Installation, and execution instructions. The preambles of the scripts provide more complete documentation to support developers.

The focus is to:

:point_right: ***Focus***:
 - Identify how ***Change*** is produced and approved
 - Present approaches and tools to support the creation and approval of ***Change***
 - Show how the Release Process is built on Continuous Integration and Continuous Deployments

#### Change Contributor Working Environment <a name="CCWE"></a>

The git working environment is used as a basis for Continuous Integration and Deployment of change.  Build and deployment procedures are
added as needed.  All change intended for the following elements can be addressed and captured with this working environment arrangement:

:point_right: ***Change Elements***:
 - Documents
 - Continuous Integration (CI) procedures and process
 - Continuous Deployment (CD) procedures and process
 - Production release deployments
 - dependency configurations
 - Testing Code for applications
 - Configuration Changes
 - Functionality Code for applications

:notebook: ***NOTES***:

 > 1. Since [Github](https://github.com/) is the repository system for this repo, the [GitHub help](https://help.github.com/) page is a primary reference.
 > 1. The [DevOps Process](https://github.com:cmguy/CM-System-Site/app/site/teamTools/devops-process.html) is a primary concept reference for this repository.

#### Git Repository Premise <a name="GRP"></a>
The git system is a **D**istributed **V**ersion **C**ontrol **S**ystems (DVCS).  This means there is no central git repository location,
they are distributed. There are git repository locations that are readable to all possible change contributors.

:notebook: ***NOTES***:
> 1. Change contributors can be local or anywhere on the internet in support of Open Source.
> 1. When change contributors work on repositories at the same time it promotes collaboration, sharing, and hands-on training. The GitFork workflow promotes this.
> 1. Branches are contained within git repositories.
> 1. Change contributors make their changes on feature branches.

Github, like other shared repository systems, i.e., [GitLabs](https://about.gitlab.com/), [BitBucket](https://bitbucket.org/), provide change contributors the ability to maintain copies of git repositories on the shared repository system.  This allows each change contributor full access control of these copied repositories.

These copied git repositories are where change contributors maintain their tested change as they prepare for approval of these changes.

Change contributors prepare and test changes on git repository branches that are setup on their workstations. As change is completed and tested, the branch the change is made on is pushed up to the change contributors copied repositories on the shared repository system.

As changes are approved by the DevOps team, they are pulled, by the DevOps team, from the change contributors copied repositories to the
repositories where approved changes are maintained. This is done via change contributor feature branches.

#### Git Enhanced Change Management <a name="GECM"></a>
As Change contributors prepare and test changes on the repositories setup on their workstations, they read, in real-time, from the
repositories containing approved changes and verify their newly prepared changes work with the latest approved changes often and consistently.

This is the basis of Continuous Integration (CI) and Continuous Deployment (CD).

:notebook: ***NOTES***:
> 1. This allows for changes to be accepted and approved at any time by the DevOps team that owns the main repository.
> 1. All DevOps team members are consistently reviewing related change as they are contributing change.

:point_right: ***Conclusions***:
> 1. DevOps Teams own repositories on the Github DVCS. These repositories contain DevOps team approved CI / CD changes.
> 1. Change contributors copy DevOps Team owned repositories to their user accounts on the GHE shared repository system.
> 1. The git repositories on the shared repository system, copied by change contributors, contain developing change not approved by the DevOps team. These are owned and fully controlled by the individual change contributor.
> 1. The repositories on the change contributors workstation are continuously updated with approved changes from the DevOps Team owned repository as new change is created and tested by change contributors.

:point_right: ***Best Practices***
> 1. [Forking Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow)
>1. [GitFlow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

## Configure for GHE Usage <a name="CfGU"></a>

Configure your workstation for Github usage. The steps required are in the [Git Installation Procedure](https://github.com/cmguy/DevOps-git/doc/GitInstallationProcedure.adoc.html).

## Produce Change <a name="PC"></a>

The first task is to establish workstation repo working environment that is:
   - Based on Github main repo
   - Cloned from a copy of Github main repo
   - Used to Continuously read from GHE main repo for latest/current approved changes as needed for merge testing
   
The [DevWA.bsh](https://github.com/cmguy/DevOps-git/tree/master/app/developer-workarea) script has been established for change contributor usage to establish a working environment for all change contributors based on Best Practices.

Each time the script is executed it:
> - Backs up the same repo on the local workstation if it exists
> - Creates a new feature branch based on arguments supplied
   
The following procedure is followed by change contributors to introduce change in a DevOps Continuous Integration (CI) Continuous Deployment (CD) approach:

:point_right: ***Change Workflow***
1. Make changes in workstation repo on your feature branch
1. Test with all current approved changes from Github main repo
     - checkout and pull each shared branch from the main repo to your local repo    
     - merge and test each pulled shared branch into your feature branch
     - In your workstation workarea on your feature branch execute merges for each shared branch to ensure your feature branch can be merged for all shared branches
     
           - git merge develop - address any conflicts and test
           - git merge master - address any conflicts and test
           - git merge [release branches] - for each merge address any conflicts and test     
     - test with all CI and Continuous Deployment (CD) tests
     - repeat these bullets for each shared branch in main repo
    
1. Push tested feature branch to your Github forked repo
1. Repeat until ready for DevOps Team Lead 'Pull request'
1. Establish DevOps lead pull request for feature branch
1. Repeat all previous steps until DevOps lead approves feature branch merge
     - The DevLead will successfully merge the developer feature branch to the appropriate shared branch, ussually develop
     - Multiple release branches and production hotfix branches may exist depending on current curcumstances. Coordinating change to these main repo branches is a primary focus of the DevLead role.
1. Each Change Contributor (developer) saves feature branches until they are coordinated by repo devlead as:
     - Part of a Production Release - or
     - No longer needed

:notebook: ***NOTES***:
> 1. It is important to provide clearly identifiable changes to change requests
> 1. Use the feature branch names and commit comments in a DevOps team consistent manner
> 1. The [DevWA.bsh](https://github.com/cmgy/DevOps-git/tree/master/app/developer-workarea) script automates the feature branch naming for you


## Approve Change <a name="AC"></a>

The DevOps team leads have final say for approved changes in the Github main repositories. The leads depend on change contributors following the above Change Workflow to:
> 1. Reduce merge complexity during code review sessions
> 1. Provide ability to modify release set contents quickly and safely
> 1. Provide various change sets that can be decoupled and combined to support changing release requirements
> 1. Produce accurate release reports quickly and automatically


## Process Production Release <a name="PPR"></a>

**_Under Construction_**

Releases are created from Approved Changes based on successfully excuting CI / CD processes.

See [CM-System-Site releases](https://github.com/cmguy/CM-System-Site/releases) or this repos releases for ***developing*** examples.

### [Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
