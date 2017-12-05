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

Nicole used ProjectTemplate to manage her project files and workflow. If used
appropriately, ProjectTemplate can help ensure reproducibility. 


## Reproducing these Analyses
To repeat the work, follow this overall workflow:

Load the project into RStudio. File > Open Project. Then navigate to the MB.Matrix - May 2017 data.Rproj on your computer.

The first two lines in any script will be

	library('ProjectTemplate')
	load.project()

The second line of code prompts some automated processing, and you'll see several messages. 
Depending on the project configuration, this may include: 

* Reading in the global configuration file contained in `config`.
* Loading any R packages listed in the configuration file. (load_libraries set to TRUE)
* Reading in any datasets stored in `data` or `cache`.  (if data_loading and cache_loading set to TRUE)
* Preprocessing data using the files in the `munge` directory. (if munging set to TRUE)

Nicole turned off many of the automatic loading because of large file sizes and lengthy pre-processing. 


To fully replicate the analyses, you'll need to do the following things manually.

1. MUNGE: Pre-process data using munge scripts
2. SRC: Run analysis scripts saved in the src folder 

There are readme files within the munge and src folders with more details. 

Each munge and analysis script should load all necessary data and RData files. 

For more details about ProjectTemplate, see http://projecttemplate.net
