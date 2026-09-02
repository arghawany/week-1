# Show hidden files

By default some of the folders (directories) and files are hidden on your computer to protect you against making changes that causes problems. You will need to see some of these files and folders to properly set up and use software.

You can choose to change the setting via a GUI (Task 1) or via the CLI (Task 1.alternative)

## Task 1 Change Settings via a GUI

### Mac OS

This is very easy to do on a Mac, simply use the following keyboard combination (i.e., holding three buttons simultaneously):

```
Command + Shift + .
```

If this doesn't work, try a Google search for "Finding hidden files on a Mac" and look for an explanation that includes a computer and OS similar to your personal setup.

### Windows OS

Settings for hidden files and folders can be found directly via the Windows File Explorer. First find the "options" or "settings" configuration window (sometimes pressing the `ALT` button toggles the menubar on and off): 

![Find the options window for your directory (Windows)](https://github.com/TUDelft-MUDE/source-files/raw/main/file/hidden_windows_1.png)

Then navigate to the proper location in the "View" tab of the Folder Options window:

![Show hidden files and folders for your directory (Windows).](https://github.com/TUDelft-MUDE/source-files/raw/main/file/hidden_windows_2.png)

## Task 1.alternative Change Settings via a CLI

If you would like to view hidden files and folders via the command line, this is illustrated with the simple commands here:

### Unix-type CLI
The option `a` lists all files (including hidden ones) and the `l` presents the output in a nicely formatted list (one item per row):

```
ls -la
```

### The command:

```
dir /a:h
```

will list hidden files in the current directory, whereas the following will list hidden directories:

```
dir /a:d
```

> By Tom van Woudenberg and Robert Lanzafame, Delft University of Technology. CC BY 4.0, more info [on the Credits page of Workbook](https://mude.citg.tudelft.nl/workbook-2025/credits.html). This page uses content from [Learn Programming for Engineers](https://teachbooks.io/learn-programming) by Delft University of Technology, licensed with CC BY 4.0 License.