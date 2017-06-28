---
title: "Codebook template"
author: "Your name here"
date: "The date here"
---

## Codebook Description
This code book modifies and updates the original codebook from the Human Activity Recognition Using Smartphones Dataset to indicate all the variables and summaries calculated, along with units, and any other relevant information.

## Study Design

#### Collection of the raw data
The original data came in a zip file called `UCI HAR Dataset.zip`. This zip file contained:
1. `test` folder 
2. `train` folder
3. `activity_labels.txt` - Links the class labels with their activity name
4. `features.txt` - List of all features 
5. `features_info.txt` - Shows information about the variables used on the feature vector
6. `README.txt`

## Creating the tidy datafile

### Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/

### Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()

## Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

### Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

#### Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

