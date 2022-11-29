#!/usr/bin/env python

# DEFINE IMPORTS HERE
import os
import shutil
import random

# FOLDERS IN SCR/DATA ZIJN GEVULD MET 80 RANDOM AFBEELDINGEN
# FUNCTIE WERKT IN NOTEBOOK, HIER NOG NIET  


def getBatch():

    origin = '../original_data/AQL_Data_in_Use/Use/'
    target = '../data/batch_09/'

    files = os.listdir(origin)

    for file_name in random.sample(files, 80):
        shutil.copy(origin+file_name, target+file_name)
    #TO DO: FIX AUTOMATIC CREATION OF FOLDERS > batch_generator_new_dir.py     
        
# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    getBatch()
    
    print("Files are copied successfully")
    

# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main()   