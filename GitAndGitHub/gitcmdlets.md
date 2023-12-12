# git cheatsheet

please see for full version:

**1. [git-scm docs](https://git-scm.com/docs)**

**2. [git-scm book](https://git-scm.com/book/en/v2)**

## 1.6 Getting Started - First-Time Git Setup

## First-Time Git Setup

Source: [Getting-Started-First-Time-Git-Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)

`git config` lets you get and set configuration variables that control all aspects of how Git looks and operates.

These variables can be stored in three different places:  
**1. --system option**  
[path]/etc/gitconfig file: Contains values applied to every user on the system and all their repositories. Because this is a system configuration file, you would need administrative or superuser privilege to make changes to it.

**2. --global (user) option**  
~/.gitconfig or ~/.config/git/config file: Values specific personally to you, the user. 

**3. --local option (.git/config in repository)**  
config file in the Git directory (that is, .git/config) of whatever repository you’re currently using: Specific to that single repository.

Each level overrides values in the previous level, so values in .git/config trump those in [path]/etc/gitconfig.

On Windows systems, Git looks for the .gitconfig file in the $HOME directory (C:\Users\$USER for most people). It also still looks for [path]/etc/gitconfig, although it’s relative to the MSys root, which is wherever you decide to install Git on your Windows system when you run the installer. If you are using version 2.x or later of Git for Windows, there is also a system-level config file at C:\Documents and Settings\All Users\Application Data\Git\config on Windows XP, and in C:\ProgramData\Git\config on Windows Vista and newer. This config file can only be changed by git config -f <file> as an admin.

You can view all of your settings and where they are coming from using:

`git config --list --show-origin`  

```txt
file:C:/Program Files/Git/etc/gitconfig diff.astextplain.textconv=astextplain  
file:C:/Program Files/Git/etc/gitconfig filter.lfs.clean=git-lfs clean -- %f  
... snap ...  
file:C:/Users/MeisterW/.gitconfig       user.email=meister.wilhelm@hotmail.de  
file:C:/Users/MeisterW/.gitconfig       user.name=wmeister-fj  
... snap ...  
file:C:/Users/MeisterW/.gitconfig       init.defaultbranch=main  
file:.git/config        branch.main.remote=gh-learn-DevTools  
... snap ...  
file:.git/config        branch.main.merge=refs/heads/main  
```

## Your Identity

The first thing you should do when you install Git is to set your user name and email address. 
`git config --global user.name "Wilhelm Meister"`  
`git config --global user.email meister.wilhelm@hotmail.de`  
Again, you need to do this only once if you pass the --global option, because then Git will always use that information for anything you do on that system. If you want to override this with a different name or email address for specific projects, you can run the command without the --global option when you’re in that project.

Many of the GUI tools will help you do this when you first run them.

## Your Editor

Now that your identity is set up, you can configure the default text editor that will be used when Git needs you to type in a message. If not configured, Git uses your system’s default editor.

If you want to use a different text editor, such as Emacs, you can do the following:

$ git config --global core.editor emacs
On a Windows system, if you want to use a different text editor, you must specify the full path to its executable file. This can be different depending on how your editor is packaged.

In the case of Notepad++, a popular programming editor, you are likely to want to use the 32-bit version, since at the time of writing the 64-bit version doesn’t support all plug-ins. If you are on a 32-bit Windows system, or you have a 64-bit editor on a 64-bit system, you’ll type something like this:

$ git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
Note
Vim, Emacs and Notepad++ are popular text editors often used by developers on Unix-based systems like Linux and macOS or a Windows system. If you are using another editor, or a 32-bit version, please find specific instructions for how to set up your favorite editor with Git in git config core.editor commands.

Warning
You may find, if you don’t setup your editor like this, you get into a really confusing state when Git attempts to launch it. An example on a Windows system may include a prematurely terminated Git operation during a Git initiated edit.

### Your default branch name

By default Git will create a branch called master when you create a new repository with git init. From Git version 2.28 onwards, you can set a different name for the initial branch.

To set main as the default branch name do:  
`$ git config --global init.defaultBranch main`  

### Checking Your Settings

If you want to check your configuration settings, you can use the  
`$ git config --list`  
command to list all the settings Git can find at that point:  
`$ git config --list`
user.name=John Doe
user.email=johndoe@example.com
color.status=auto
color.branch=auto
color.interactive=auto
color.diff=auto
...
You may see keys more than once, because Git reads the same key from different files ([path]/etc/gitconfig and ~/.gitconfig, for example). In this case, Git uses the last value for each unique key it sees.

You can also check what Git thinks a specific key’s value is by typing git config <key>:

`$ git config user.name`  
wmeister-fj

### Note

Since Git might read the same configuration variable value from more than one file, it’s possible that you have an unexpected value for one of these values and you don’t know why. In cases like that, you can query Git as to the origin for that value, and it will tell you which configuration file had the final say in setting that value:

`$ git config --show-origin --list | grep user.email`

``` txt
file:C:/Users/MeisterW/.gitconfig       user.email=meister.wilhelm@hotmail.de
file:.git/config        user.email=meister.wilhelm@hotmail.de
```

`$ git config --show-origin user.email`

``` txt
file:.git/config        meister.wilhelm@hotmail.de
```

### Create a .gitignore file

You can get examples of *.gitignore* file on [gitignore.io](https://www.toptal.com/developers/gitignore/) web page.

Create/edit `vim .gitignore` `code .gitignore` file.

## Some Notes out of MS Learn: [Introduction to version control with Git](https://learn.microsoft.com/en-gb/training/paths/intro-to-vc-git/)

Git is a version control system (VCS). Another name for a VCS is a software configuration management (SCM) system. The two terms often are used interchangeably.

### [Additional Resources](https://learn.microsoft.com/en-gb/training/modules/intro-to-git/5-summary)

If you'd like to dig deeper, here are more resources:

* Run the `git help tutorial` and `git help tutorial-2` commands.
* Visit the [Everyday Git](https://git-scm.com/docs/everyday) site or use the `git help everyday` command.
* Review [Git and GitHub learning resources](https://help.github.com/en/articles/git-and-github-learning-resources).
* Watch the [Introduction to Git Recap](https://www.youtube.com/watch?v=9uGS1ak_FGg%3Fazure-portal%3Dtrue) video.
* Check out the [documentation section](https://git-scm.com/doc) of [Git's official website](https://git-scm.com/).

### [Introduction to Git](https://learn.microsoft.com/en-gb/training/modules/intro-to-git/)

#### Git Version

`# git --version`

``` txt
git version 2.37.0.windows.1
```

#### Create a git repository

`# git init`

#### Adding, changing and tracking files in git repo

`# vim .gitignore`  
`# git add .gitignore`  
`# git commit .gitignore`  
`# vim .gitignore`  
`# git diff`  

``` txt
diff --git a/.gitignore b/.gitignore
index 09ba154..4f87a72 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,2 +1,3 @@
 *.bak
-*~
\ No newline at end of file
+*~
+tmp
\ No newline at end of file
```

`# git add -A`  
`# git commit -m "Make small wording change; ignore editor backups"`  
`# git diff`  
  
`#`  

Compare differences between the latest commit and previous commit:  
`# git diff HEAD^`  

``` txt
diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..09ba154
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,2 @@
+*.bak
+*~
\ No newline at end of file
```

`# git log --oneline`

``` txt
0899664 (HEAD -> main) Make small wording change; ignore editor backups
5434c20 Add HTML boilerplate to index.html
1fa46d1 Add a heading to index.html
7e12f04 Create an empty index.html file
```
  
#### How to "amend" / update last commit without adding a new one

`$ git log -n1 --stat --summary`

``` txt
commit aab7619366b64ab4d7a99ca8a698592c994e0ef6 (HEAD -> main)
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Wed Nov 22 12:19:06 2023 +0100

    2 *index.html  files modified

 copy.index.html | 3 ++-
 index.html      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)
```

`$ ls -l`

``` txt
total 2
-rw-r--r-- 1 MeisterW 1049089 338 Nov 22 12:16 copy.index.html
drwxr-xr-x 1 MeisterW 1049089   0 Nov 20 15:28 CSS/
-rw-r--r-- 1 MeisterW 1049089 333 Nov 22 12:17 index.html
```

`$ git rm copy.index.html`

``` txt
rm 'copy.index.html'
```

`$ls -l`

``` txt
drwxr-xr-x 1 MeisterW 1049089   0 Nov 20 15:28 CSS/
-rw-r--r-- 1 MeisterW 1049089 333 Nov 22 12:17 index.html
```

`$ git status`

``` txt
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        deleted:    copy.index.html

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   index.html
```

`$ git commit -a --amend`

``` txt
[main a25863b] 2 *index.html  files modified
 Date: Wed Nov 22 12:19:06 2023 +0100
 2 files changed, 1 insertion(+), 14 deletions(-)
 delete mode 100644 copy.index.html
```

`$ git status`

``` txt
On branch main
nothing to commit, working tree clean
>
```

`$ git log -n1 --stat --summary`

``` txt
commit a25863b6785bec2cd144fe394a4c600aec3d0641 (HEAD -> main)
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Wed Nov 22 12:19:06 2023 +0100

    2 *index.html  files modified

 copy.index.html | 13 -------------
 index.html      |  2 +-
 2 files changed, 1 insertion(+), 14 deletions(-)
 delete mode 100644 copy.index.html
```

#### How to add an empty directory to git repo

`# mkdir CSS`  
`# touch CSS/.git-keep`  
`git status`

``` txt
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        CSS/

nothing added to commit but untracked files present (use "git add" to track)
```

`# git add .`  
`# git status`

``` txt
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   CSS/.git-keep
```

`$ git commit -m "CSS dir added"`

``` txt
[main 4e92aa7] CSS dir added
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 CSS/.git-keep
```

#### Viewing project history

At any point you can view the history of your changes using

Show all changes: `git log`  
Show just the last two commits:

`$ $it log -n2`  

``` txt
commit 9c8418355b9f6585853f362525060ab62d9c54cf (HEAD -> main)
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Mon Nov 20 15:33:50 2023 +0100

    Add a simple stylesheet

commit 24ac4e8390e4d5760d9233c778c00fbc27c97d0f
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Mon Nov 20 15:17:40 2023 +0100

    .git-keep deleted
```

`$ git log --oneline`  

``` txt
9c84183 (HEAD -> main) Add a simple stylesheet
24ac4e8 .git-keep deleted
4e92aa7 CSS dir added
0899664 Make small wording change; ignore editor backups
5434c20 Add HTML boilerplate to index.html
1fa46d1 Add a heading to index.html
7e12f04 Create an empty index.html file
```

`$ git log -n3 --oneline`

``` txt
9c84183 (HEAD -> main) Add a simple stylesheet
24ac4e8 .git-keep deleted
4e92aa7 CSS dir added
```

If you also want to see complete diffs at each step, use  
`$ git log -n1 -p`

``` txt
commit 85bfe658c214888a5e39d9d2305a4688896dc813 (HEAD -> main)
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Tue Nov 21 15:11:39 2023 +0100

    Revert "Revert "test --amend option""

    This reverts commit c94aa7851f6672be0dee329e314cc13087aed094.

diff --git a/index.html b/index.html
index c76d728..2bf0b5b 100644
--- a/index.html
+++ b/index.html
@@ -1 +1,13 @@
-<h1>That was a mistake!</h1>
+<!DOCTYPE html>
+<html>
+    <head>
+        <meta charset="utf-8">
+        <title>Our Feline Friends</title>
+        <link rel="stylesheet" href="CSS/site.css">
+    </head>
+    <body>
+        <h1>Our Feline Friends</h1>
+        <p>Eventually we will put cat pictures here.</p>
+        <hr>
+    </body>
+</html>
\ No newline at end of file

```

Often the overview of the change is useful to get a feel of each step  
`$ git log -n3 --stat --summary`

``` txt
commit aab7619366b64ab4d7a99ca8a698592c994e0ef6 (HEAD -> main)
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Wed Nov 22 12:19:06 2023 +0100

    2 *index.html  files modified

 copy.index.html | 3 ++-
 index.html      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

commit 1a0f6db4fa17cd1ae591e1aee49bc7ba6ba003a4
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Wed Nov 22 12:15:34 2023 +0100

    copy of index.html added, will be deleted

 copy.index.html | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 copy.index.html

commit 85bfe658c214888a5e39d9d2305a4688896dc813
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Tue Nov 21 15:11:39 2023 +0100

    Revert "Revert "test --amend option""

    This reverts commit c94aa7851f6672be0dee329e314cc13087aed094.

 index.html | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)
```

#### Recovering a deleted file

`$ rm index.html`  
`$ ls -l index.html`  

``` txt
ls: cannot access 'index.html': No such file or directory
```

`$ git checkout -- index.html`  
`$ git checkout -- index.html`  

#### Recovering a file that was deleted: git rm

`$ git rm index.html`
`$ ls -l index.html`  

``` txt
ls: cannot access 'index.html': No such file or directory
```

`$ git checkout -- index.html`

``` txt
error: pathspec 'index.html' did not match any file(s) known to git
```

`$ git reset HEAD index.html`

``` txt
Unstaged changes after reset:
D       index.html
```

`$ ls -l index.html`  

``` txt
ls: cannot access 'index.html': No such file or directory
```

`$ git checkout -- index.html`  
`$ ls -la index.html`  

``` txt
-rw-r--r-- 1 MeisterW 1049089 319 Nov 21 12:31 index.html
```

#### Revert a commit (revert a "valid" version of  an accidentlly verwriten file)

`$ cat index.html`

``` html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Our Feline Friends</title>
        <link rel="stylesheet" href="CSS/site.css">
    </head>
    <body>
        <h1>Our Feline Friends</h1>
        <p>Eventually we will put cat pictures here.</p>
        <hr>
    </body>
</html>
```

`$ echo '<h1>That was a mistake!</h1>' > index.html`  
`$ cat index.html`

``` txt
<h1>That was a mistake!</h1>
```

`$ git commit -m "Purposely overwrite the contents of index.html" index.html`

``` txt
warning: in the working copy of 'index.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'index.html', LF will be replaced by CRLF the next time Git touches it
[main 033d337] Purposely overwrite the contents of index.html
 1 file changed, 1 insertion(+), 13 deletions(-)
```

`$ git log -n1`

``` txt
commit 033d337ec858b347dddfa03fbd25bd1f19de9151 (HEAD -> main)
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Tue Nov 21 12:42:47 2023 +0100

    Purposely overwrite the contents of index.html
```

`$ git checkout -- index.html`  
`$ cat index.html`

``` html
<h1>That was a mistake!</h1>
```

`$ git revert --no-edit HEAD`

``` txt
[main 944b58d] Revert "Purposely overwrite the contents of index.html"
 Date: Tue Nov 21 12:51:04 2023 +0100
 1 file changed, 13 insertions(+), 1 deletion(-)
```

`$ git log -n2`

``` txt
commit 944b58da7e445b6b65cb7c43e9af8d939523e08b (HEAD -> main)
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Tue Nov 21 12:51:04 2023 +0100

    Revert "Purposely overwrite the contents of index.html"

    This reverts commit 033d337ec858b347dddfa03fbd25bd1f19de9151.

commit 033d337ec858b347dddfa03fbd25bd1f19de9151
Author: wmeister-fj <meister.wilhelm@hotmail.de>
Date:   Tue Nov 21 12:42:47 2023 +0100

    Purposely overwrite the contents of index.html
```

`$ cat index.html`

``` html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Our Feline Friends</title>
        <link rel="stylesheet" href="CSS/site.css">
    </head>
    <body>
        <h1>Our Feline Friends</h1>
        <p>Eventually we will put cat pictures here.</p>
        <hr>
    </body>
</html>
```

### [Collaborate with Git](https://learn.microsoft.com/en-gb/training/modules/collaborate-with-git/)

#### [Exercise - Clone a repo](https://learn.microsoft.com/en-gb/training/modules/collaborate-with-git/2-exercise-clone)

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ ls -la`

``` txt
total 14
drwxr-xr-x 1 MeisterW 1049089   0 Nov 22 16:20 ./
drwxr-xr-x 1 MeisterW 1049089   0 Nov 17 17:40 ../
drwxr-xr-x 1 MeisterW 1049089   0 Nov 22 16:25 .git/
-rw-r--r-- 1 MeisterW 1049089   9 Nov 20 14:16 .gitignore
drwxr-xr-x 1 MeisterW 1049089   0 Nov 20 15:28 CSS/
-rw-r--r-- 1 MeisterW 1049089 321 Nov 22 16:21 index.html
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$  cd ..`

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs`  
`$ mkdir AliceCats`

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs (main)`  
`$ ls -la`

``` txt
total 6400
... snap ...
drwxr-xr-x 1 MeisterW 1049089       0 Nov 23 10:41 AliceCats/
drwxr-xr-x 1 MeisterW 1049089       0 Nov 22 16:20 Cats/
... snap ...
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs (main)`  
`$ cd AliceCats`

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats`
`$ git clone ../Cats .`

``` txt
Cloning into '.'...
done.
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ ls -la ../AliceCats`

``` txt
total 14
drwxr-xr-x 1 MeisterW 1049089   0 Nov 23 10:42 ./
drwxr-xr-x 1 MeisterW 1049089   0 Nov 23 10:41 ../
drwxr-xr-x 1 MeisterW 1049089   0 Nov 23 10:42 .git/
-rw-r--r-- 1 MeisterW 1049089   9 Nov 23 10:42 .gitignore
drwxr-xr-x 1 MeisterW 1049089   0 Nov 23 10:42 CSS/
-rw-r--r-- 1 MeisterW 1049089 321 Nov 23 10:42 index.html
```

#### [Exercise - Make a pull request](https://learn.microsoft.com/en-gb/training/modules/collaborate-with-git/3-exercise-pr)

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ # code CSS/site.css`

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git status`

``` txt
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   CSS/site.css

no changes added to commit (use "git add" and/or "git commit -a")
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git remote`

``` txt
origin
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git log --oneline`

``` txt
a25863b (HEAD -> main, origin/main, origin/HEAD) 2 *index.html  files modified
1a0f6db copy of index.html added, will be deleted
85bfe65 Revert "Revert "test --amend option""
c94aa78 Revert "test --amend option"
b8d39a4 test --amend option
033d337 Purposely overwrite the contents of index.html
9c84183 Add a simple stylesheet
24ac4e8 .git-keep deleted
4e92aa7 CSS dir added
0899664 Make small wording change; ignore editor backups
5434c20 Add HTML boilerplate to index.html
1fa46d1 Add a heading to index.html
7e12f04 Create an empty index.html file
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git commit -a -m "Change background color to light blue"`

``` txt
[main 1e265f3] Change background color to light blue
 1 file changed, 1 insertion(+), 1 deletion(-)
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git log -n3 --oneline`

``` txt
1e265f3 (HEAD -> main) Change background color to light blue
a25863b (origin/main, origin/HEAD) 2 *index.html  files modified
1a0f6db copy of index.html added, will be deleted
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git log -n1 -p`

``` txt
commit 1e265f3e0e01054bbacea23bb32c18839ca6ad46 (HEAD -> main)
Author: Alice <alice@contoso.com>
Date:   Thu Nov 23 11:31:42 2023 +0100

    Change background color to light blue

diff --git a/CSS/site.css b/CSS/site.css
index caefc86..86d41e8 100644
--- a/CSS/site.css
+++ b/CSS/site.css
@@ -1,2 +1,2 @@
 h1, h2, h3, h4, h5, h6 { font-family: sans-serif; }
-body { font-family: serif; }
\ No newline at end of file
+body { font-family: serif; background-color: #F0FFF8; }
\ No newline at end of file
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git log -n1 --stat --summary`

``` txt
commit 1e265f3e0e01054bbacea23bb32c18839ca6ad46 (HEAD -> main)
Author: Alice <alice@contoso.com>
Date:   Thu Nov 23 11:31:42 2023 +0100

    Change background color to light blue

 CSS/site.css | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git request-pull -p origin/main .`

``` txt
warn: refs/heads/main found at . but points to a different object
warn: Are you sure you pushed 'HEAD' there?
The following changes since commit a25863b6785bec2cd144fe394a4c600aec3d0641:

  2 *index.html  files modified (2023-11-22 16:25:31 +0100)

are available in the Git repository at:

  .

for you to fetch changes up to 1e265f3e0e01054bbacea23bb32c18839ca6ad46:

  Change background color to light blue (2023-11-23 11:31:42 +0100)

----------------------------------------------------------------
Alice (1):
      Change background color to light blue

 CSS/site.css | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/CSS/site.css b/CSS/site.css
index caefc86..86d41e8 100644
--- a/CSS/site.css
+++ b/CSS/site.css
@@ -1,2 +1,2 @@
 h1, h2, h3, h4, h5, h6 { font-family: sans-serif; }
-body { font-family: serif; }
\ No newline at end of file
+body { font-family: serif; background-color: #F0FFF8; }
\ No newline at end of file
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git status`

``` txt
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git log -n3 --oneline`

``` txt
1e265f3 (HEAD -> main) Change background color to light blue
a25863b (origin/main, origin/HEAD) 2 *index.html  files modified
1a0f6db copy of index.html added, will be deleted
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ cd ../Cats/`
`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ git remote`  

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ git remote add remote-Alice ../AliceCats`

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ git remote`

``` txt
remote-Alice
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ git remote --verbose`

``` txt
remote-Alice    ../AliceCats (fetch)
remote-Alice    ../AliceCats (push)
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ git status`

``` txt
On branch main
nothing to commit, working tree clean
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ git log -n5 --oneline`

``` txt
a25863b (HEAD -> main) 2 *index.html  files modified
1a0f6db copy of index.html added, will be deleted
85bfe65 Revert "Revert "test --amend option""
c94aa78 Revert "test --amend option"
b8d39a4 test --amend option
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ cd -`

``` txt
/c/Users/MeisterW/OneDrive - FUJITSU/__EDU-traninigs/AliceCats
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ git log -n5 --oneline`

``` txt
1e265f3 (HEAD -> main) Change background color to light blue
a25863b (origin/main, origin/HEAD) 2 *index.html  files modified
1a0f6db copy of index.html added, will be deleted
85bfe65 Revert "Revert "test --amend option""
c94aa78 Revert "test --amend option"
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/AliceCats (main)`  
`$ cd -`

``` txt
/c/Users/MeisterW/OneDrive - FUJITSU/__EDU-traninigs/Cats
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ cat CSS/site.css`

``` txt
h1, h2, h3, h4, h5, h6 { font-family: sans-serif; }
body { font-family: serif; }
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ git pull remote-Alice main`

``` txt
remote: Enumerating objects: 7, done.
remote: Counting objects: 100% (7/7), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), 398 bytes | 5.00 KiB/s, done.
From ../AliceCats
 * branch            main       -> FETCH_HEAD
 * [new branch]      main       -> remote-Alice/main
Updating a25863b..1e265f3
Fast-forward
 CSS/site.css | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
```

`MeisterW@G02DEXN07283 MINGW64 ~/OneDrive - FUJITSU/__EDU-traninigs/Cats (main)`  
`$ cat CSS/site.css`

``` txt
h1, h2, h3, h4, h5, h6 { font-family: sans-serif; }
body { font-family: serif; background-color: #F0FFF8; }
```

#### [Exercise - Collaborate by using a shared repo](https://learn.microsoft.com/en-gb/training/modules/collaborate-with-git/4-exercise-use-shared-repo)

1. Create a new directory named Shared.git at the same level as the Alice and Cats directories to hold the bare repo:  
`cd ..`  
`mkdir Shared.git`  
`cd Shared.git`  
The directory name isn't important, but we'll refer to it as the *Shared.git* directory, or just the shared directory, in these exercises.  
Naming the directory *Shared.git* follows the longstanding tradition of assigning bare repositories a name that ends in **.git** to distinguish them from working trees. It is a convention, but not a requirement.

2. Now, use the following command to create a bare repo in the shared directory:  
`git init --bare`

3. When a repo is still bare, the git checkout command can't be used to set the name of the default branch. To accomplish this task, you can change the HEAD branch to point at a different branch; in this case, it's the main branch:  
`git symbolic-ref HEAD refs/heads/main`

4. The next step is to get the contents of your repo into the shared repo. Use these commands to return to the project directory where your repo is stored, set up an origin remote, and perform an initial push:

cd ../Cats
git remote add origin ../Shared.git
git push origin main

5. Check the output. The output should indicate success:

Output

Counting objects: 12, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (8/8), done.
Writing objects: 100% (12/12), 1.07 KiB | 0 bytes/s, done.
Total 12 (delta 1), reused 0 (delta 0)
To ../Shared.git
 * [new branch]      main -> main

6. You want push and pull to use the main branch of origin by default, as if you had made your repo by cloning it in the first place. But first, you need to tell Git which branch to track.

git branch --set-upstream-to origin/main

7. Check for this output:

Output

``` txt
Branch main set up to track remote branch main from origin.
```

Git would complain if you try to run this command before the initial push, because the new repository had no branches. Git can't track a branch that doesn't exist. All Git is doing under the hood is looking in .git/refs/remotes/origin for a file named trunk.

#### Set up for collaborators

The next step is for Bob to clone the bare repository, and then for Alice to set the origin in their repo to target the shared repo for pushes and pulls.

1. Create a directory named Bob that's a sibling of the project directory, and then change to the Bob directory:

cd ..
mkdir Bob
cd Bob

2. Now, clone the shared repo (be sure to include the period at the end of the command):

git clone ../Shared.git .

3. Currently, Alice's repo is configured to push to and pull from their own repo. Use the following commands to change to the Alice directory and change origin to point to the shared repo:

cd ../Alice
git remote set-url origin ../Shared.git

#### Begin collaborating

Now that Bob is set up to work on the website, Bob decides to add a footer to the bottom of the page. Let's take on Bob and Alice's persona for a few moments and learn the basics of collaboration.

1. Begin by going to the Bob directory and working as Bob:

cd ../Bob
git config user.name Bob
git config user.email bob@contoso.com

2. Open index.html and replace the <hr> element with this line (found at the end of the <body> element):

HTML

<footer><hr>Copyright (c) 2021 Contoso Cats</footer>
Then, save the file and close the editor.

3. Commit the changes and push to the remote origin:

git commit -a -m "Put a footer at the bottom of the page"
git push

4. Check the output. If you see a warning like the following example, don't worry. This warning just lets users know about a change to Git's default behaviors. If you'd like to make sure that you don't see this warning again, you can run git config --global push.default simple.

Output

warning: push.default is unset; its implicit value has changed in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the traditional behavior, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

Since Git 2.0, Git defaults to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)
5. While Bob is editing the site, Alice is, too. Alice decides to add a nav bar to the page. This addition requires Alice to modify two files: index.html and site.css. Begin by returning to the Alice directory:

cd ../Alice

6. Now, open index.html and insert the following line right after the <body> tag on line 8:

HTML

<nav><a href="./index.html">home</a></nav>
Then, save the file and close the editor.

7. Then, open site.css in the CSS folder and add the following line at the bottom:

css

nav { background-color: #C0D8DF; }
Save the file and close the editor.

8. Now, let's assume that Alice receives an e-mail from Bob saying that Bob made changes to the site. Alice decides to pull Bob's changes before committing their own. (If Alice had already committed their changes, they would have a different problem, which is discussed in another module.) Alice runs this command:

git pull

9. Check the output. From the output, it looks as if Git has prevented a problem:

Output

remote: Counting objects: 3, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 2), reused 0 (delta 0)
Unpacking objects: 100% (3/3), done.
From ../Shared
   843d142..2cf6cbf  main     -> origin/main
Updating 843d142..2cf6cbf
error: Your local changes to the following files would be overwritten by merge:
        index.html
Please commit your changes or stash them before you can merge.
Aborting
Git warns that the pull would overwrite Alice's version of index.html and lose their changes. That's because Bob modified index.html, too. If Alice hadn't changed index.html, Git would have committed the merge.

10. Use a git diff command to see what changes Bob made to index.html:

git diff origin -- index.html

11. Check the output. From the output, it's evident that Alice's changes and Bob's changes don't overlap. Now, Alice can stash their changes.

git stash saves the state of the working tree and index by making a couple temporary commits. Think of the stash as a way to save your current work while you do something else, without making a "real" commit or affecting your repository history.

In reality, Alice should have stashed or committed their changes before they tried to pull. Pulling to a "dirty" working tree is risky, because it can do things from which you can't easily recover.

Use the following command to stash Alice's changes:

git stash

12. Check the output. It should look like this example:

Output

Saved working directory and index state WIP on main: 95bbc3b Change background color to light blue
HEAD is now at 95bbc3b Change background color to light blue
13. Now, it's safe for Alice to pull, after which they can "pop" the stash, which is organized as a stack. (In fact, git stash is shorthand for git stash push. It's a lot like the stack where you put bills that you haven't gotten around to paying yet.) Run these commands:

git pull
git stash pop

Popping the stash merges the changes. If changes overlap, there might be a conflict. You can learn how to resolve those situations in a more advanced Git module from Microsoft Learn.

14. Check the output. Alice should see this output, which lets them know that the merge was successful and that their changes are back, but not yet staged for commit:

Output

Auto-merging index.html
On branch main
Your branch is up-to-date with 'origin/main'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   CSS/site.css
        modified:   index.html

no changes added to commit (use "git add" and/or "git commit -a")
Dropped refs/stash@{0} (0cfb7b75d56611d9fc6a6ab660a51f5582b8d9c5)
At this point, Alice can continue working or just commit and push their changes. Let's make another change as Alice by assigning footers the same style as nav bars.

15. Open site.css in the CSS folder and replace the third line—the one that styles <nav> elements—with this shared CSS rule. Then, as usual, save your changes and close the editor.

HTML

nav, footer { background-color: #C0D8DF; }
16. Now, commit the changes and push them to the shared repo:

git commit -a -m "Stylize the nav bar"
git push

The updated site is now in the shared repo.

17. Finish up returning to the project directory and doing a pull:

cd ../Cats
git pull

18. Open index.html (the one in the project directory) to confirm that the changes made by both Bob and Alice are present in your local repo by. Verify that index.html has the most up-to-date code:

HTML

<!DOCTYPE html>
<html>
  <head>
    <meta charset='UTF-8'>
    <title>Our Feline Friends</title>
    <link rel="stylesheet" href="CSS/site.css">
  </head>
  <body>
    <nav><a href="./index.html">home</a></nav>
    <h1>Our Feline Friends</h1>
    <p>Eventually we will put cat pictures here.</p>
    <footer><hr>Copyright (c) 2021 Contoso Cats</footer>
  </body>
</html>

19. At the moment, your repo and Alice's repo are synced, but Bob's repo is not. Finish up by getting Bob up to date, too:

cd ../Bob
git pull

All three repos are now in alignment. The shared repo is the single source of truth for all users, and all pushes and pulls are directed to the shared repo.

If you're curious what the website looks like, here's a preview:

![Image of Cats website](images/cats-home-page.png)

If you'd like, you can download your files to preview them locally:

1. Zip the Cats folder:  
cd ..  
zip -r Cats.zip Cats  

2. Download the zipped file:  
download Cats.zip  

3. Now, unzip the file on your local computer and open index.hml to see for yourself!
