# Mig Birds Matrix / BC VRI models

Welcome to Nicole's BC models built in collaboration with Canfor and West Fraser!

BAM (rep: Nicole Barker, supervised by Erin Bayne) was recruited to collaborate 
on a project with BC forest products companies (reps: Kari Stuart-Smith of Canfor 
and Laura Trout of West Fraser), and CWS (rep: Mark Drever). 

The primary goal was to evaluate a Stand Ranking Matrix created by the BC 
forest products companies. Read more about the matrix in the folder:
"...Info\Mig Bird Toolkit & Stand Ranking Matrix"

The secondary goal was to create an alternative to the Stand Ranking Matrix, 
by creating maps of predicted total bird density at the scale of Vegetation
Resource Inventory (VRI) polygons. 

## Why are you looking at these files? 

If you're part of the BAM team, maybe Nicole suggested these files could teach you about working with the BAM dataset. Or maybe you're running similar analyses in a different region. Either way, here's what you need to know: 

Nicole used ProjectTemplate to manage her project files and workflow. If used appropriately, ProjectTemplate can help ensure reproducibility. But it requires a few quirks. 

1. You'll need ALL the files (e.g., data), so request access to the Dropbox folder. **Copy the folder to your own unshared Dropbox folder so your changes don't affect Nicole's files.** 
2. You'll want to use RMarkdown via RStudio

## Reproducing these Analyses
To repeat the work, follow this overall workflow:

1. In RStudio, load the project: MB.Matrix-Nov2017data.Rproj will be saved in the NBarker.BCVRImodels directory. 
2. Ensure you have the ProjectTemplate package installed on your computer. 
3. Run scripts from directories in the following order:
	MUNGE: Pre-process data using munge scripts	
	SRC: Run analysis scripts saved in the src folder 

There are readme files within the munge and src folders with more specific details but the generally applicable steps are: 

1. The first two chunks in any RMd file will be setup chunks. Chunk 1 has:

	require(knitr) # loads knitr package
	opts_knit$set(root.dir = '..') #sets reference directory one level up from where the current file is (don't worry about this too much; but it is important for re-running scripts)

2. Chunk 2 is:

	library('ProjectTemplate')
	load.project()

The second line of code prompts some automated processing set up by Nicole for this project, and you'll see several messages. Depending on the project configuration, this may include: 

* Reading in the global configuration file contained in `config`.
* Loading any R scripts in the `lib` directory
* Loading any R packages listed in the configuration file. (load_libraries set to TRUE)
* Reading in any datasets stored in `data` or `cache`.  (if data_loading and cache_loading set to TRUE)
* Preprocessing data using the files in the `munge` directory. (if munging set to TRUE)

Nicole turned off many of the automatic loading because of large file sizes and lengthy pre-processing. 

3. Then run the remaining code by line or by chunk, as per your preference. Again, refer to the munge and src readmes for more details. 


## What is ProjectTemplate?
For more about the ProjectTemplate package, see http://projecttemplate.net
