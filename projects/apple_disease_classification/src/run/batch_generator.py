#!/usr/bin/env python

# DEFINE IMPORTS HERE
import os
import shutil
import random

def getBatch():

    origin = 'C:/MakeAIWork2/projects/apple_disease_classification/data/AQL_Data_in_Use/'
    target = 'C:/MakeAIWork2/projects/apple_disease_classification/src/data/batch_01/'

    files = os.listdir(origin)

    for file_name in random.sample(files, 80):
        shutil.copy(origin+file_name, target+file_name)
        
print("Files are copied successfully")

# # IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    pass
    

# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    getBatch()   