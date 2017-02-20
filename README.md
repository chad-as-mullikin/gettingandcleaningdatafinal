There are two scripts that I have submitted for this exercise. The
first, "run_analysis.R" makes the following assumptions:

* The data set "getdata_projectfiles_UCI HAR Dataset.zip" has been
   downloaded, saved in a working directory, and unzipped in that same
   working directory.
* The script "run_analysis.R" is saved in the same directory as the
   "getdata-projectfiles_UCI HAR Dataset.zip" file.
* The R working directory is set to the directory that contains the
   "getdata_projectfiles_UCI HAR Dataset.zip" and "run_analysis.R"
   files.

The second, "generate_second_data_frame.R", makes the following
similar assumptions:

* The data set "getdata_projectfiles_UCI HAR Dataset.zip" has been
   downloaded, saved in a working directory, and unzipped in that same
   working directory.
* The script "generate_second_data_frame.R" is saved in the same
   directory as the "getdata-projectfiles_UCI HAR Dataset.zip" file
   and the "run_analysis.R" file..
* The R working directory is set to the directory that contains the
   "getdata_projectfiles_UCI HAR Dataset.zip" file, the "run_analysis.R"
   file, and the "generate_second_data_frame.R" file.

With these assumptions, simply make the following calls from within
RSTudio:

* source("run_analysis.R")
* source("generate_second_data_drame.R")

The first call will generate the requested tidy data set. The second
call will first generate the tidy data set, and then compute the
requested follow on data frame. If you just execute the second of
these source calls, you will have available two global variables. The
first, "uberset", is the tidy data frame, and the second "vals" is the
follow on data frame after computing means. 

