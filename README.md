fetch-stars
===========

I enjoy reading other people's code. Thanks to GitHub it isn't such a hassle to finde some.
So when I get my hands on particularly remarkable code (or just code I want to look at again some time later), I use GitHub's
'starring' feature, similar to a bookmark. And I use this feature a lot.

To be able to browse the code offline and with my cli-tools, I always make 'git clone' my starred repositorys.
But sometimes, especially with many stars, this becomes monotonous, boring and repetive. So I wrote this script.

How to install
--------------
```shell
wget 

```

How to use
----------


*If you have two-factor-auth enabled (like myself):*
 - create a "Personal Access Token" on [this settings page](https://github.com/settings/applications)
 - use the created "Personal Access Token" as username
 - use 'x-oauth-basic' as password


Known Issues
------------
 - Currently, only the first page of one's starred repo-pages is being processed
 - No full sync - Meaning if some of the repos already exist locally, there may be problems

TODO
----
 - Full OAUTH/GitHub-Auth support


