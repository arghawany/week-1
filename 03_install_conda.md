# Install TU Delft conda

TU Delft has an digital exam environment which is used in programming assignments. To make this available for TU Delft computers and your own personal computer, a Conda-based standalone offline installer is shared.

## Task 1 Remove older versions of Anaconda/Miniconda

We recommend you completely remove older versions of the Anaconda/Miniconda software distributions from your computer and start from scratch, even if you installed Anaconda or Miniconda recently (e.g., within the last 2-3 years). While it is possible to upgrade them, in our experience it is usually faster and less problematic to simply reinstall.

If you installed Anaconda for MUDE last year, you don't have to remove it and can continue with task 3.

## Task 2 Install TU Delft stand-alone installer

Open the TU Delft stand-alone installer from this link: https://software.tudelft.nl/592/

And follow the steps with recommended options. For windows-users: make sure you select 'Add conda to my PATH environment variable' (this will allow you to use conda from any terminal). If you don't have that option, continue with step *Task 2.additional* after this step.

![Add conda to PATH](https://github.com/TUDelft-MUDE/source-files/raw/main/file/settings_conda.png)

A few tips:

- For Windows users: To prevent permission errors, do not launch the installer from the Favorites folder.
- For Windows users: If you encounter issues during installation, temporarily disable your anti-virus software during install, then re-enable it after the installation concludes. If you installed for All Users, uninstall Anaconda and re-install it for Just Me only.
- For Windows users: The installation directory path cannot contain spaces or Unicode characters. For more information
- For Windows users: Do not install as Administrator unless admin privileges are required (i.e. because of the installation path length)
- For Mac users: If you get the error message “You cannot install Anaconda in this location,” reselect Install for all users of this computer and try again.
- For Mac users: If you get the error message “This package is incompatible with this version of macOS,” please see [here](https://www.anaconda.com/docs/reference/troubleshooting#%E2%80%9Dthis-package-is-incompatible-with-this-version-of-macos%E2%80%9D-error-when-running-a-pkg-installer-on-osx) for troubleshooting help.

> Source: https://www.anaconda.com/docs/getting-started/anaconda/install

## Task 2.additional Add conda to path

This steps is only required for windows-users who didn't add Anaconda to their path during task 2.

1. Find the path to your conda installation. The easiest way to do this is to navigate to the folder using the File Explorer, then click in the address bar near the top and copy the text, which should look something like this :

```
C:\Users\<your user name>\AppData\Local\tudelft-conda\scripts
```

or

```
C:\Users\<your user name>\tudelft-conda\scripts
```

or 

```
C:\ProgramData\tudelft-conda\scripts
```

In this case, the folder (directory) contains the executable files `conda.exe`, which is what makes the command `conda` possible to use on the CLI. Thus, the full path to `conda.exe` is this:

```
C:\Users\<your user name>\AppData\Local\tudelft-conda\scripts\conda.exe
```

or

```
C:\Users\<your user name>\tudelft-conda\scripts\conda.exe
```

or 

```
C:\ProgramData\tudelft-conda\scripts\conda.exe
```

2. Navigate to the _Edit environment variables for your account_ settings.
The easiest way to find the appropriate setting window is by typing the first letters of "environment" in the Windows toolbar. The first three letters are usually enough to cause several relevant options to appear; select _Edit environment variables for your account_ and see the figure below for an illustration:

![Search for environment variable settings](https://github.com/TUDelft-MUDE/source-files/raw/main/file/environment_var_search.png)

3. Set the variable.
As a general rule you should only adjust the `PATH` variable for the _user_, **not** the _system._ Failing to do this is a common mistake and leads to frustration when installing applications like Anaconda and Miniconda.
To set the right variable, pay particular attention to the descriptions provided in the environment variable window, as it is easy to miss; the right location is illustrated clearly in the following figure:

![Unless specified otherwise, don't set an environment variable for the _system_, only your account](https://github.com/TUDelft-MUDE/source-files/raw/main/file/environment_var_miniconda_not_system.png)

Once you have identified the proper (user) window, look for the `PATH` variable, select it, then click the "Edit..." button. If the variable value is empty, you will probably see a window similar to that in the following figure; enter (paste) the path of the folder (directory) you wish to add to the path in the field "Variable value" then click "OK." Note that you can browse for the file and folder of interest via the settings window if you did not already copy the path via the File Explorer or a CLI. 

![How to add a folder (directory) location to the `PATH` variable. The example here is for Miniconda](https://github.com/TUDelft-MUDE/source-files/raw/main/file/environment_var_miniconda.png)

If there are already values set for the `PATH` variable then the "Edit..." button will probably show a window like that in the following figure. In this case, you can add a new path via the "New" button; paste the path in an open row of the list. Note that you can browse for the file and folder of interest via the settings window if you did not already copy the path via the File Explorer or a CLI. 

![Example showing folders (directories) that have already been added to the `PATH` variable. Note the "New" and "Edit" buttons.](https://github.com/TUDelft-MUDE/source-files/raw/main/file/environment_var_PATH_examples.png)

The following figure illustrates exactly where you should paste your desired folder (directory) path after clicking the "New" button:

![How to add a folder (directory) location to the `PATH` variable using the "New" button.](https://github.com/TUDelft-MUDE/source-files/raw/main/file/environment_var_PATH_new.png)

4. Restart your computer

> This task uses content from https://teachbooks.io/learn-programming/install/common/env_vars_windows.html by Delft University of Technology, licensed with CC BY 4.0 License.

## Task 3 Check installation

1. Open your command prompt
  - Windows users: search for `cmd` in the start menu to open the command prompt
  - Mac users: Use `Cmd`+`Spacebar` to open Spotlight Search. Type `Terminal` and press `Return` to open.
  - Linux users: type `Ctrl`+`Alt`+`T` to open a terminal application
2. Type `conda --version`
3. You should get something like: `conda 25.5.1`

> By Tom van Woudenberg and Robert Lanzafame, Delft University of Technology. CC BY 4.0, more info [on the Credits page of Workbook](https://mude.citg.tudelft.nl/workbook-2025/credits.html). This page uses content from [Learn Programming for Engineers](https://teachbooks.io/learn-programming) by Delft University of Technology, licensed with CC BY 4.0 License.
