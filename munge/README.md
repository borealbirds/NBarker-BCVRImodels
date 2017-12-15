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

1. **00.01.MergeAvianFiles.Rmd** - Quality-checks, corrects, pre-processes, and merges the various tables from BAM's Avian Database. Removes duplicates. Performs some initial tests of patterns in avian data by survey method to help decide how to harmonize the data. 
Combines spatial data (SS), survey instance (PKEY), and point count (ABUND) data into one flat dataset and saves as csv for future use: _data/birddata_preprocess1.csv_


2. **00.02.MergeVRIIntersectFiles.Rmd** - Quality-checks, corrects, and pre-processes the various intersections of BAM's Avian Database with two VRI datasets: 
* the provincial one, modified by Forsite to produce the 4 derived attributes used in ranking; and
* the VRI obtaind directly from Canfor that doesn't have those 4 derived attributes.
Produces a cleaned dataset for future use: _birdVRIintersect_preprocess1.csv_


3. **01.01.FixTreeSpeciesCodes.Rmd** - Identify the various tree species codes used in different files going into your analyses. Using the standardized species code lookup table, add a new column containing the standardized tree species gorup code.


4. **01.02.CheckFixStandArea.Rmd** - Calculate area per forest stand type by aggregating the polygon areas I calculated in ArcGIS. Compare these areas to those calculated independently by Barb Sobota, a tech with CWS. Then create a final dataset of forest stand area by stand type to be used in subsequent analyses. 



5. **01.03.CheckFixRanks.Rmd** - 







