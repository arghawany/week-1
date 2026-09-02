# Setup local file system and clone this assignment

You will be working with a _lot_ of different files when coding: `csv`, `pdf`, `ipynb`, `txt`, `md` just to name a few. It is good practice to get in the habit of storing files in an organized way. For MUDE, we recommend creating a folder `MUDE` to collect all files associated with the module, then set up a new folder for each week and each project as your **working directory** for each of those activities. This is where you will store files and edit them when working on them. We'll provide you with git repositories for each programming assignment, which you will clone to your computer and store in the appropriate working directory. You can then edit the files in these repositories, and push your changes back to GitHub when you're done. For the workshop and group assignment you can create your own repositories using the provided files, but this is not required (except for week 1, there it is required because the topic is version control with git).

We'd advise a local file system like this:

```
├── MUDE                            <-- a root directory for MUDE projects
    ├── Week_1
        ├── cloned_repo_programming_assignment
            ├── .git (hidden)
                ├── ...
            ├── README.md
            ├── text.md
            ├── analysis.ipynb
            ├── code.py
            ├── ...
            ├── auxiliary_files
                ├── data.csv
                ├── figure.png
                ├── ...
        ├── cloned_repo_assignment_2
            ├── ...
    ├── Week_2
        ├── cloned_repo_programming_assignment_3
            ├── ...
        ├── (eventually_cloned_repo_)assignment_3
            ├── ...
    ├── Week_3
        ├── ...
    ├── Week_4
        ├── ...
```

Please note that file types are typically defined by their "extension," which is the set of letters that appears after the name of a file, separated by a dot. If this is a foreign concept to you, just note for now that extensions make it easier for computer software to find files and decide what to do with them. Markdown (`.md`) is a text-based file format that is used to easily make nicely formatted documents. We will use it to write reports summarizing our analysis and findings. You can think of it like a (very!) simple alternative to LaTeX.

As you can see, we have included a directory `auxiliary_files` in the directory for Project_1. This is a generic setup to help keep folders from getting too cluttered: as projects become more complex, we may want to use a variety of sub-folders to organize our files (e.g., data, code, figures, etc).

Furthermore, there's the `.git` directory (which is hidden by default). This directory stores all the information about the version control, including to what remote repositories online it links. You shouldn't delete or touch this directory; if you remove it, you lose the version history of your files in the assignment directory.

## Backup your work

It is important to keep a backup of your work, and to save these files in a consistent way. Your typical cloud-based backup software is OK for many types of files, but you should note that sometimes there can be issues when running code on your computer in these special sync folders. Imagine: your Python code is running and loading or saving data into files in the same folders that the cloud backup software is using: there are bound to be conflicts!

We strongly encourage you follow these pieces of advice:

1. **Do not** store your local repositories in a location that is backed up using cloud software (e.g., OneDrive, Dropbox, etc). This often interferes with the functioning of git. Instead, we will push to the _remote repositories on GitHub_ to backup our work.
2. **Do not** store your local repositories in locations with spaces in the file path, especially on Windows. While there are ways to deal with this if it happens, you will save yourself trouble down the line if you avoid using spaces in your folder and file names.

## Task 1 Access the assignment

1. Go to https://github.com/MUDE-2026/PA1.1_template
2. Click on 'Use this template' to create your own clean version on this repository.
3. Select as an owner your personal GitHub account
4. Give the repository a logical name for this assignment, for example `PA1.1`
5. Choose visibility as public or private, depending on your preference. Note that private repositories are only visible to yourself, while public repositories are visible to everyone on the internet.
6. Click 'Create repository'

You've now created your own repository for this assignment, which is a copy of the template repository. This is where you will do your work for this assignment, and where you will push your changes to GitHub when you're done. You can also use this repository to keep track of your progress and to collaborate with others (e.g., your teachers or fellow students).

## Task 2 Check commit history

Click on the "Commits" tab near the top center of the page. You should see a commit history with two commits: "Initial commit" and "Add deadline". You could visualize the commit history like this:

![Git history](https://github.com/TUDelft-MUDE/source-files/raw/main/file/mermaid-diagram-PA1_1_9.png)

## Task 3 Create a working directory

Create the following working directory outside of a cloud service folder in a path which doesn't have spaces in the file path (e.g., `C:\Users\your_user_name\Documents\MUDE\Week_1`):

```
├── MUDE
    ├── Week_1
```

## Task 4 Clone this assignment from GitHub.

1. Locate your own personal repository and click on the green `Code` - `Open with GitHub Desktop`:

    ![Open with GitHub Desktop](https://github.com/TUDelft-MUDE/source-files/raw/main/file/open_with_github_desktop.png)

2. This will open a window in GitHub desktop. Select the location where you would like the _local repository_ to be located, the "Local path." Set is to inside your `MUDE/Week_1` folder:

    ![Set location of clone](https://github.com/TUDelft-MUDE/source-files/raw/main/file/clone_locate.png)

3. At this point you can create the local repository by clicking "Clone," which will start the process of downloading the files from GitLab to your computer at the location you chose for local path. If you were successful in cloning the repository, you will see something similar to the figure below.

    ![Successfull clone](https://github.com/TUDelft-MUDE/source-files/raw/main/file/successfull_clone.png)

> By Tom van Woudenberg and Robert Lanzafame, Delft University of Technology. CC BY 4.0, more info [on the Credits page of Workbook](https://mude.citg.tudelft.nl/workbook-2025/credits.html). This page uses content from [Learn Programming for Engineers](https://teachbooks.io/learn-programming) by Delft University of Technology, licensed with CC BY 4.0 License.
