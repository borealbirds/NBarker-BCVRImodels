---
title: "mungeREADME"
author: "Nicole Barker"
date: "November 28, 2017"
output: html_document
---

# Steps to follow in pre-processing avian and Vegetation Resource Inventory (VRI) data for analyses

Nicole codes using RMarkdown, embedding code and results with extensive commentary. All scripts are therefore .Rmd files. You'll want to use RStudio to run these. They *should* work if you simply click "knit"

*Note:* Several scripts were used for quality-checks and inspecting for consistencies among datasets. These are not always included in the workflow because they were completed before this round of analyses. However, I plan to include these scripts are included and described here, for your reference.

### Scripts used for this round

1. **00.01.MergeAvianFiles.Rmd** - Quality-checks, corrects, pre-processes, and merges the various tables from BAM's Avian Database. Performs some initial tests of patterns in avian data by survey method to help decide how to harmonize the data.

STILL NEED TO ACTUALLY MAKE CORRECTIONS TO EXCLUDE SOME OF THE DUPLICATED DATASETS

2. **00.02.MergeVRIIntersectFiles.Rmd** - Quality-checks, corrects, and pre-processes the various intersections of BAM's Avian Database with two VRI datasets: the provincial one, modified by Forsite to produce the 4 derived attributes used in ranking; and the VRI obtaind directly from Canfor that doesn't have those 4 derived attributes. 








### Older files 


* 01.01a.TreeSpeciesCodes_Troubleshoot.Rmd: Identify the various tree species codes used in different files going into your analyses. Identify files requiring correction/standardization.

* 01.01b.TreeSpeciesCodes_Fix.Rmd: Using the standardized species code lookup table, fix all files that have tree species codes. 

### Files used before this round of analyses, and included just for reference:









