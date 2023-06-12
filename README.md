# OFA_lithics
Occlusal Fingerprint Analysis (OFA) was applied to four sets of experimental stone tool samples and contact materials in a pilot study.
Details on the methodology can be accessed with the following link: https://www.protocols.io/private/4982678744C711EDB1E40A58A9FEAC02


The study was conducted between October 2022 and May 2023 in the TraCEr laboratory, MONREPOS, Neuwied (LEIZA).
All data was collected by Hannah Rausch (Uni Münster) with the exception of the data from sample FLT8-1, which was collected by Lisa Schunk (TraCEr). Additional collaborators include Ottmar Kullmer (Senckenberg Frankfurt), Joao Marreiros (TraCEr), Walter Gneisinger (TraCEr) and Ivan Calandra (IMPALA).

The entire data set contains 7 data objects listed with the letters a through h. 
This GitHub repository contains the first 5 objects (a, b, c, d, e):

- a_raw_data_smarttester
  - Sensor data collected during experimentation with the material SMARTTESTER® from the company Inotec. The data was exported from the computer of the SMARTTESTER® after experimentation.
  - Each folder contains five CSV files with data on depth [mm], force [N], friction [N], position [mm] and velocity [mm/s].

- b_data_smarttester_stepmm.xlsx
  - Merged sensor data for all samples in a XLSX file.
  - The file contains data on sample ID, angle of the edge, raw material, stroke number, step (the position of the sample holder in [mm] along the unilinear stroke; derived from the absolute position), force [N],    friction [N], depth [mm], position (of the sample holder; absolute position) [mm] and velocity [mm/s].

- c_data_analysis_smarttester_stepmm.R
  - R-script for analysis of the data_smarttester_stepmm.xlsx.
  - The freeware R-Studio (version 2022.12.0+353, Posit Software, PBC) was used for analysis.
  - The script was adapted from Ivan Calandra and Lisa Schunk (https://github.com/lschunk/PastHuman_StoneToolPerformance/blob/main/analysis_ST/scripts/Plots_TFE-Inotec.Rmd).
  - The script contains commands for creating line graphs (tidyverse v. 1.3.2, R.utils v. 2.12.2, openxlsx 4.2.5, tools 4.2.2, patchwork v. 1.1.2, doBy v. 4.6.16, ggrepel v. 0.9.2 and ggplot2 v. 3.4.0) and generating descriptive statistics (hmisc v. 5.0-1).

- d_output_data_smarttester_plots
  - Sensor data graphs (PDFs) of the variables depth [mm], force [N], friction [N], and velocity [mm/s] of each tool sample throughout experimentation.
  - The data data_smarttester_stepmm.xlsx was analysed using the data_analysis_smarttester_step.R script.

- e_descriptivestats_smarttester_stepmm
  - A TXT file containing the output of the descriptive statistics (hmisc v. 5.0-1) of data_smarttester_stepmm.xlsx.

The remaining data objects (f, g) including OFA- and ZENConnect projects are available on zenedo: 

*** End of README ***
