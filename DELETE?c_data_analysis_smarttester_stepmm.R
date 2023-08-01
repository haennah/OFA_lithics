---
  title: "Data Analysis SMARTTESTERR®"
author: "Hannah Rausch" (adapted from Ivan Calandra & Lisa Schunk)

# Goal of the script
This script plots sensor data to visualise the measurements 
recorded throughout the experiments.

# Load packages
  ```{r Libraries}
pack_to_load <- c("tidyverse", "R.utils", "openxlsx", "tools", 
                  "patchwork", "doBy", "ggrepel", "ggplot2")
sapply(pack_to_load, library, character.only = TRUE, logical.return = TRUE)
```

# Load data into R object
```{r}
imp_data <- data_smarttester_stepmm
str(imp_data)
```

# Plot each of the selected numeric variable 
## Plots showing the strokes as lines 
```{r}
good_data <- imp_data
# plot all 2000 strokes per sample divided by 40 
# split the data in the individual 24 samples
sp <- split(good_data, good_data[["Sample"]])
for (i in seq_along(sp)) {
  # create a sequence of every ~ 50th strokes 
  seq_st <- seq(1, length(unique(sp[[i]][["Stroke"]])), by = 40) %>% 
    c(max(unique(sp[[i]][["Stroke"]])))
  dat_i_all <- sp[[i]] %>% 
    filter(Stroke %in% seq_st)
  range_depth <- range(dat_i_all[["Friction"]])
  p1 <- ggplot(data = dat_i_all, aes(x = Step, y = Friction, colour = Stroke)) +
    geom_line(aes(group = Stroke), alpha = 0.3) + 
    labs(x = "Distance (mm)", y = "Friction [N]") +
    # reverse the legend starting with 0 going to 2000 strokes    
    scale_colour_continuous(trans = "reverse") + 
    ylim(-30, 10) +
    # change the 'Step-number' in the x-legend  
    scale_x_continuous(breaks=c(0, 50, 100, 150, 200)) +
    theme_classic() +
    labs(title = "Friction FLT8-1") +
    theme_classic() +
    theme(plot.title = element_text(size = 14L, face = "bold"))
  
  # plot only the first 50 strokes per sample  
  dat_i_50 <- sp[[i]] %>% 
    # take only the first 50 strokes per sample
    filter(Stroke %in% 1:50)
  p2 <- ggplot(data = dat_i_50) +
    geom_line(aes(x = Step, y = Friction, colour = Stroke, group = Stroke), alpha = 0.3) + 
    labs(x = "Distance (mm)", y = "Friction [N]") + 
    scale_colour_continuous(trans = "reverse") + 
    ylim(-30, 10) +
    scale_x_continuous(breaks = c(0, 50, 100, 150, 200)) +
    theme_classic() +
    labs(title = "Friction FLT8-1") +
    theme_classic() +
    theme(plot.title = element_text(size = 14L, face = "bold"))
  
  # patchwork plot
  p <- p2 + p1 + plot_annotation(title = names(sp)[i]) 
  print(p)
  # save to PDF
  file_out <- paste0(file_path_sans_ext(info_in[["file"]]), "_plot_", 
                     names(sp)[i], ".pdf")
  ggsave(filename = file_out, plot = p, path = dir_out, device = "pdf")
} 
```
# Descriptive statistics

library(Hmisc)
describe(data_smarttester_stepmm)

# End of script #