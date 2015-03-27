# GrailsCapDeployer
###### A simple Capistrano script for building and deploying Grails apps to a servlet container.

## Features
* No need of scm tools in the target server
* Two different production - staging environments

## Requirements
* Capistrano 3
* Grails 

## Usage
1. simply copy the files in the root folder of your Grails application
2. set up your env variables
3. deploy 
<br/><pre><code>
cap production deploy
</pre></code>
or 
<br/><pre><code>
cap stage deploy
</pre></code>

### Side notes
You can add additional steps to the pipeline (e.g. a database dump, cleanup tasks, etc..) run either locally or on the target machine.

kudos to [chqr](https://github.com/chqr) for the original idea of bypassing the scm on the target server

(YMMV)

