---
title: "mungeREADME"
author: "Nicole Barker"
date: "Jan 2, 2018"
output: html_document
---

# Steps to follow in pre-processing avian and Vegetation Resource Inventory (VRI) data for analyses

Nicole codes using RMarkdown, embedding code and results with extensive commentary. All scripts are therefore .Rmd files. You'll want to use RStudio to run these. They *should* work if you simply click "knit", assuming you have all the necessary files in the right folder structure.

*Note:* Several scripts were used for quality-checks and inspecting for consistencies among datasets. These are not always included in the workflow because they were completed before this round of analyses. Contact me directly at nbarker@ualberta.ca if something seems amiss or if you want further detail. 

### Scripts used for this round

1. **00.01.PreprocessAvianFiles.Rmd** - Quality-checks, corrects, pre-processes, and merges the various tables from BAM's Avian Database. Removes duplicates. Performs some initial tests of patterns in avian data by survey method to help decide how to harmonize the data. 
Combines spatial data (SS), survey instance (PKEY), and point count (ABUND) data into one flat dataset and saves as csv for future use: _data/birddata_preprocess1.csv_

2. **01.01.PreProcess_ForsiteVRI.Rmd** - Initial inspection of the attribute table exported from the Forsite-modified version of the VRI dataset. Identifies which field is a unique identifier. Saves by caching as RData to the cache folder. 

3. **01.01a.FixTreeSpeciesCodes.Rmd** - Identify the various tree species codes used in different files (e.g., matrix, VRI, etc.). Using the standardized species code lookup table, add a new column containing the standardized tree species group code to the full VRI file. Note that this step required some previous exploration work to determine which SpeciesGroup codes refer to the same thing. This relied on some background reference materials from Kari Stuart-Smith, and also some discussion with her. The end result is a corrected version of the attribute table from the Forsite VRI shapefile. It is cached as an RData file.

4. **01.01b.CheckFixStandArea.Rmd** - Calculate area per forest stand type by aggregating the polygon areas I calculated in ArcGIS. Compare these areas to those calculated independently by Barb Sobota, a tech with CWS. Then create a final dataset of forest stand area by stand type to be used in subsequent analyses. Saved as a csv file with an area per forest stand type (ForID). 

5. **01.01c.CheckFixRanks.Rmd** - Do some quality-checking of ranks in the Forsite VRI file. Compare ranks from the Forsite shapefile to the ranks from Kari Stuart-Smith's matrix. Produce a final set of ranks per ForID that are saved in a csv file with rank per forest stand type (ForID). Merge corrected ranks back into the VRI shapefile and cache as an RData file. 

6. **01.02.PreProcess_CanforTFLVRI.Rmd** - Initial inspection of the attribute table exported from the Canfor TFL VRI dataset. Identifies which field is a unique identifier. Saves by caching as RData to the cache folder. 

7. **01.03.Merge_Full_VRI_Data.Rmd** - Identify which columns are needed from both VRI files (Canfor and Forsite). Add blank columns to Canfor file so it can be combind with the Forsite file. Combine the two files together and modify the factors to have the correct levels. 

8. **02.01.PreprocessVRIIntersectFiles.Rmd** - Check for duplicates and errors within the bird-intersected VRI data. Identify which columns are unique polygon/stand identifiers in the full VRI file and which can be used to intersect with the bird-intersected versions of the VRI dataset. Extract the corrected VRI data out of the full-VRI dataset based on the polygon identifiers intersected by bird data. Remove any obviously problematic polygons, such as those with inexplicably missing information (age = NA). Cache the full dataset and the one split into Canfor and Forsite as RData files. 

9. **02.02.FilterforTemporalAlighment.Rmd** - Determine which dates from the VRI file I should look at when eliminating bird surveys. Explore data fitting various scenarios of alignment between bird survey, disturbance, and inventory date. Exclude data that probably have mismatches between what's in the VRI and what the birds experienced during the survey. 

10. Distance to edge. 

11. Final data prep


Then SRC 
* rank description (need to rerun after I cleaned up ranks  from shapefile)
* sampling representation after filtering temporal representation. 





