#!/bin/bash
group1path=/group_shares/FAIR_LAB2/Projects/FAIR_users/Feczko/projects/Long_ADHD_OHSU/MBM_all.mat #path and filename where group1's data is located
group1var=X_CC #the name of the variable within group1's matrix (.mat) file. This should represent a 2D matrix
use_group2_data=true #if set to true, the dataset for the second group will be specified in a separate file, if set to false, the first group's dataset will be randomly split into two groups. Set to false when doing regression
group2path=/group_shares/FAIR_LAB2/Projects/FAIR_users/Feczko/projects/Long_ADHD_OHSU/unrelated_MBM.mat #path and filename where group2's data is located
group2var=U_CC #the name of the variable within group2's matrix (.mat) file
filename=example_XCCvsUCC_output #the name of the output directory
regression=false # if set to true, the algorithm will model a regression forest for a selected outcome variable.
results_matfile=/group_shares/FAIR_LAB2/Projects/FAIR_users/Feczko/projects/Long_ADHD_OHSU/example_XCCvsUCC.mat # the path and filename of the .mat variable where the results are stored
infomap_command_file=/group_shares/fnl/bulk/code/internal/utilities/simple_infomap/simple_infomap.py # the path and filename of the simple_infomap python function built by Damion Demeter
lowdensity=0.2 #used for community detection -- the lowest edge density to examine community structure
stepdensity=0.05 #used for community detection -- the increment value for each edge density examined
highdensity=1 #used for community detection -- highest edge density to examine community structure
infomapfile=/group_shares/fnl/bulk/code/external/utilities/infomap/Infomap #the full path and filename for the Infomap executable, must be installed from http://mapequation.org
repopath=/group_shares/fnl/bulk/projects/FAIR_users/Feczko/code_in_dev/RFAnalysis #the full path to the repository containing the RFAnalysis code.
matlab_command=matlab #the name of the matlab command line executable, can include arguments additional options, etc. SingleCompThread is enabled by default.