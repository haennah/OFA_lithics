# OFA_lithics
Occlusal Fingerprint Analysis (OFA) was applied to four sets of experimental stone tool samples and contact materials in a pilot study.
Details on the methodology can be accessed with the following link: https://www.protocols.io/private/4982678744C711EDB1E40A58A9FEAC02


The study was conducted between October 2022 and May 2023 in the TraCEr laboratory, MONREPOS, Neuwied (LEIZA).
All data was collected by Hannah Rausch (Uni Münster) with the exception of the data from sample FLT8-1, which was collected by Lisa Schunk (TraCEr). Additional collaborators include Ottmar Kullmer (Senckenberg Frankfurt), Joao Marreiros (TraCEr), Walter Gneisinger (TraCEr) and Ivan Calandra (IMPALA).

The entire data set contains 5 data objects listed with the letters a through e. 
This GitHub repository contains the first 3 objects (a, b, c):

- a_raw_data_smarttester
  - A folder containing the sensor data collected during experimentation with the material SMARTTESTER® from the company Inotec.
  - 10 sub-folders contain the raw data exported from the computer of the SMARTTESTER® after experimentation. In each of these, five CSV files contain data on the parameters depth [mm], force [N], friction [N], position [mm] and velocity [mm/s].
  - The file data_smarttester_stepmm.xlsx contains the merged raw data, plus one additional parameter. The additional parameter is "Releativ_pos" which was calculated using the "Step" and "Position" values. The relative position shows the position of the tool sample on the unilinear cutting stroke at the time of measurement.

- b_output_data_smarttester_plots
  - Sensor data graphs (PDFs) of the parameters depth [mm], force [N], friction [N], and velocity [mm/s] of each tool sample throughout experimentation.
  - The table descriptivestats_smarttester_stepmm.xlsx contains descriptive statistics of all parameters including the number of strokes.

- c_data_analysis_smarttester_stepmm.Rmd
  - R-script for analysis of the data_smarttester_stepmm.xlsx.
  - The freeware R-Studio (version 2022.12.0+353, Posit Software, PBC) was used for analysis.
  - The script was adapted from Ivan Calandra and Lisa Schunk (https://github.com/lschunk/PastHuman_StoneToolPerformance/blob/main/analysis_ST/scripts/Plots_TFE-Inotec.Rmd).
  - The script contains commands for creating line graphs (tidyverse v. 1.3.2, R.utils v. 2.12.2, openxlsx 4.2.5, tools 4.2.2, patchwork v. 1.1.2, doBy v. 4.6.16, ggrepel v. 0.9.2 and ggplot2 v. 3.4.0, grateful v. 0.2.0 and viridis v. 0.6.2) and retrieving descriptive statistics.

The remaining data objects (d, e) including OFA- and ZENConnect projects are available on zenodo: 10.5281/zenodo.7930863 

*** End of README ***
