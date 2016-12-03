# Using Jenkins with Matlab

This set of tutorials intends to demonstrate how to use Jenkins with MATLAB and Simulink to automate Simulink software builds, MATLAB unit tests and other similar tasks.

> [Jenkins](https://jenkins.io) is an open source automation server written in Java. It supports SCM tools including AccuRev, CVS, Subversion, [Git](https://en.wikipedia.org/wiki/Git), Mercurial, Perforce, [Clearcase](https://en.wikipedia.org/wiki/Rational_ClearCase) and RTC, and can execute [Apache Ant](http://ant.apache.org) and Apache Maven based projects as well as arbitrary shell scripts and Windows batch commands.

> Builds can be triggered by various means, for example by commit in a version control system, by scheduling via a cron-like mechanism and by requesting a specific build URL. It can also be triggered after the other builds in the queue have completed.

These instructions are written using:

- Windows 7
- Matlab R2016a
- Jenkins 2.19.4 LTS

However they should be applicable to any version of Windows, Matlab, and Jenkins.
