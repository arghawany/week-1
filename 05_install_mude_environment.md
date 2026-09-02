# Setup `mude-base-2026` environment

The TU Delft conda distribution includes a base environment which should contain everything you will encounter at TU Delft. However, it's good practice to create a separate environment for your different project (like MUDE). Therefore, we'll create a `mude-base-2026` environment.

## Task 1 Download `environment.yml`

Download [environment.yml here](./environment.yml)

## Task 2 Open folder in command prompt

Navigate to the folder where you downloaded `environment.yml`.

## Task 3 Create `mude-base-2026` environment

Create a new environment by running:

```
conda env create -f environment.yml
```

Where `-f environment.yml` instructs `conda` which file contains the list of desired software.

You should get a list of packages which are being downloaded. In the end it should show you this:

```
Downloading and Extracting Packages:

Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate mude-base-2026
#
# To deactivate an active environment, use
#
#     $ conda deactivate
```

> By Tom van Woudenberg, Delft University of Technology. CC BY 4.0, more info [on the Credits page of Workbook](https://mude.citg.tudelft.nl/workbook-2025/credits.html).
