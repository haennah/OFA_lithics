# OFA_lithics
Occlusal Fingerprint Analysis (OFA) was applied to four sets of experimental stone tool samples in a pilot study.
Details on the methodology can be accessed with the following link: 


The study was conducted between October 2022 and May 2023 in the TraCEr laboratory, MONREPOS, Neuwied (LEIZA).
All data was collected by Hannah Rausch (Uni Münster) with the exception of the data from sample FLT8-1 which was collected by Lisa Schunk (TraCEr). Additional collaboratos include Ottmar Kuller (Senckenberg Frankfurt), Joao Marreiros (TraCEr), Walter Gneisinger (TraCEr) and Ivan Calandra (IMPALA).

The reposotory contains the following files/folders:
output_data_smarttester_plots
-
raw_data_smarttester
- Sensor data collected during experimentation with the material SMARTTESTER® from the company Inotec. The data was exported from the computer of the SMARTTESTER® after experimentation.
- Each folder contains five CSV files with data on depth (of the sample) [mm], force [N], friction [N], position (of the sample holder) [mm] and velocity [mm/s].
data_analysis_smarttester_stepmm.R
- R-script for analysis of the data_smarttester_stepmm.xlsx.
- The script contains 
data_smarttester_stepmm.xlsx
- Merged sensor data for all samples in a XLSX file.
- The file contains sample ID, angle of the edge, raw material, stroke number, step (the position of the sample holder in [mm] along the unilinear stroke; derived from the absolute position), force [N], friction [N], depth (of the sample) [mm], position (of the sample holder; absolute position) [mm] and velocity [mm/s].
descriptivestats_smarttester_stepmm
-
