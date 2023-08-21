# OFA lithics
Occlusal Fingerprint Analysis (OFA) was applied to four sets of experimental stone tool samples and contact materials in a pilot study. Details on the methodology can be accessed with the following link: https://www.protocols.io/private/4982678744C711EDB1E40A58A9FEAC02

The study was conducted between October 2022 and May 2023 in the TraCEr laboratory, MONREPOS, Neuwied (LEIZA). All data was collected by Hannah Rausch (Uni Münster) with the exception of the data from sample FLT8-1, which was collected by Lisa Schunk (TraCEr). Additional collaborators include Ottmar Kullmer (Senckenberg Frankfurt), Joao Marreiros (TraCEr), Walter Gneisinger (TraCEr) and Ivan Calandra (IMPALA).

The entire data set contains 5 data files listed with the letters a through e. This GitHub repository contains the first 3 files (a, b, c):

## a_raw_data_smarttester

A folder containing the sensor data collected during experimentation with the material SMARTTESTER® from the company Inotec.
10 sub-folders contain the raw data exported from the computer of the SMARTTESTER® after experimentation. In each of these, five CSV files contain data on the parameters depth [mm], force [N], friction [N], position [mm] and velocity [mm/s].  
The file data_smarttester_stepmm.xlsx contains the merged raw data.

## b_output_data_smarttester

Sensor data graphs (PDFs) of the parameters depth [mm], force [N], friction [N], and velocity [mm/s] of each tool sample throughout experimentation.  
The table descriptivestats_smarttester_stepmm.xlsx contains descriptive statistics of all parameters including the number of strokes.

## c_script

Rmd script c_data_analysis_smarttester_stepmm.Rmd for analysis of the data_smarttester_stepmm.xlsx, rendered with knitr into HTML and MD files.  
The script was adapted from Ivan Calandra and Lisa Schunk (https://github.com/lschunk/PastHuman_StoneToolPerformance/blob/main/analysis_ST/scripts/Plots_TFE-Inotec.Rmd).
The script contains commands for creating line graphs and retrieving descriptive statistics.  

References in the script and in the bibliography file grateful-refs.bib were generated with the package grateful.  

The remaining data objects (d, e) including OFA- and ZENConnect projects are available on zenodo: 10.5281/zenodo.7930863

## d_OFA_projects

Folder containing the OFA projects for all four sample sets; named accordingly.
The OFA software can be downloaded using the following link: https://www.ifgeo.uni-bonn.de/en/ifg_homepage/departments/paleontology/labs/vertebraten/ehemalige-forschergruppen/for-771/ofa/download.
Each OFA project contains 3D models of one tool sample and a contact material. 
The 3D models were generated with the AICON smartScan-HE R8 structured light scanner and the OptoCat (2020R2) software and edited in GOMInspect (ZEISS) which is accessible with the following link: https://www.gom.com/en/products/zeiss-quality-suite/gom-inspect-pro.
A READme in the folder gives an overview of the individual project settings.

## e_ZENConnect_projects

ZENConnect (ZEISS) projects (A5PROJ) of the surface images of each side of each tool sample. Projects are named accordingly.
Projects were created with the ZENdesk3 3.5 (blue edition) (ZEISS) software which can be accessed with the following link: https://www.zeiss.com/microscopy/en/products/software/zeiss-zen-desk.html.
Folders corresponding to each ZENConnect project containing all images of the project. 
Overview EDF images were acquired and processed with a digital microscope (ZEISS Smartzoom 5). High magnification (5x or more) images were acquired with the upright light microscope component of a laser-scanning microscope from ZEISS (AxioImager.72 Vario).

*** End of README ***
