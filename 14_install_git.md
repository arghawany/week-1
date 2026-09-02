# Install git

Although GitHub Desktop allows you to do most git tasks, for some stuff you require a CLI.

## Task 1 Download and install Git

### On windows

1. Download git from: https://gitforwindows.org/
2. Run the installer:
3. Click on "Next" four times (two times if you've previously installed Git). You don't need to change anything in the information, location, components, and start menu screens.
4.  From the dropdown menu, "Choosing the default editor used by Git", select "Use Visual Studio Code as Git's default editor" and click on "Next". (Note: as long as you know how to use it, you can choose any other editor from the list)
5. On the page that says "Adjusting the name of the initial branch in new repositories", select "Override the default..." and type `main` in the box. In addition to being more inclusive, this will make things more compatible with GitHub.
6.  Click on "Next" four times. You don't need to change anything in the PATH environment, SSH executable, HTTPS transport backend, line ending conversions.
7. For the terminal emulator to use with Git Bach, click 'Use Windows' default console window.
8. Click on `Next` two times. You don't need to change anything in the default behavior of `git pull`, credential helper and extra options.
9. Click on "Install".
10. Click on "Finish" or "Next".

### For Mac users

Most versions of MacOS will already have Git installed, and you can activate it through the terminal with `git version`. However, if you don't have Git installed for whatever reason, you can install the latest version. Install Git for Mac by downloading and running the most recent "mavericks" installer from [this list](http://sourceforge.net/projects/git-osx-installer/files/). Because this installer is not signed by the developer, you may have to right click (control click) on the `.pkg` file, click Open, and click Open on the pop up window. After installing Git, there will not be anything in your `/Applications` folder, as Git is a command line program.

### For Linux users

Fun fact: Git was originally developed to version the Linux operating system! So, it only makes sense that it is easy to configure to run on Linux.

You can install Git on Linux through the package management tool that comes with your distribution.

#### Debian/Ubuntu
1. Git packages are available using `apt`.
2. It's a good idea to make sure you're running the latest version. To do so, Navigate to your command prompt shell and run the following command to make sure everything is up-to-date: `sudo apt-get update`.
3. To install Git, run the following command: `sudo apt-get install git-all`.

#### Fedora
1. Git packages are available using `dnf`.
2. To install Git, navigate to your command prompt shell and run the following command: `sudo dnf install git-all`.

## Task 2 Check installation

Open your command prompt / terminal to verify Git and type `git version` to verify Git was installed.

> By Tom van Woudenberg and Robert Lanzafame, Delft University of Technology. CC BY 4.0, more info [on the Credits page of Workbook](https://mude.citg.tudelft.nl/workbook-2025/credits.html). This page uses content from [Learn Programming for Engineers](https://teachbooks.io/learn-programming) by Delft University of Technology, licensed with CC BY 4.0 License.
