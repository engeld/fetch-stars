fetch-stars
===========
**fetch-stars** *clones ~~all~~ most of your starred GitHub projects*

--- 

**ATTENTION: Currently under heavy rewriting. THINGS ARE BROKEN!**

I enjoy reading other people's code. Thanks to GitHub it isn't such a hassle to finde some.
So when I get my hands on particularly remarkable code (or just code I want to look at again some time later), I use GitHub's
'starring' feature, similar to a bookmark. And I use this feature a lot.

To be able to browse the code offline and with my cli-tools, I always make 'git clone' my starred repositorys.
But sometimes, especially with many stars, this becomes monotonous, boring and repetive. So I wrote this script.

How to install
--------------

**Dependencies:**
 - [jsawk](https://github.com/micha/jsawk)

```shell
$ wget https://raw.github.com/engeld/fetch-stars/master/fetch-stars.sh
$ chmod +x ./fetch-stars.sh
```

How to use
----------

    ./fetch-stars.sh [-u USER] [-d DIRECTORY]  

*If you have two-factor-auth enabled (like myself):*
 - create a "Personal Access Token" on [this settings page](https://github.com/settings/applications)
 - use the created "Personal Access Token" as username
 - use 'x-oauth-basic' as password

Workflow
--------
 - Loop through all of the given users starred projects
   - For each one, check if it already exists in the target directory
     - If it doesn't exists yet, clone it there
     - If it already exists, update it


Known Issues
------------
 - Currently, only the first page of one's starred repo-pages is being processed
 - No full sync - Meaning if some of the repos already exist locally, there may be problems

TODO
----
 - Implement Sync
 - Full OAUTH/GitHub-Auth support
 - Few more commandline-switches
   - USE GETOPTS

Resources & Co
--------------
 - [GitHub API: Repository Starring](http://developer.github.com/v3/activity/starring/)
 - [GitHub API issue - listing starred repos](http://stackoverflow.com/questions/14057478/github-api-issue-listing-starred-repos)
 - [An introduction to curl using GitHub's API](https://gist.github.com/caspyin/2288960)
 - [GitHub API: OAuth](http://developer.github.com/v3/oauth/) - *I've read it hundreds of times and it's still a mystery to me*
 - [Advanced Bash Scripting Guide](http://www.tldp.org/LDP/abs/html/) - *my bible*


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/engeld/fetch-stars/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

