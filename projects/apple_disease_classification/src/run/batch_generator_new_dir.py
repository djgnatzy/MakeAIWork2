#!/usr/bin/env python

# DEFINE IMPORTS HERE
import os
import shutil
import random

def getBatch():

    origin = 'C:/MakeAIWork2/projects/apple_disease_classification/data/AQL_Data_in_Use/'
    parent_dir = "C:/MakeAIWork2/projects/apple_disease_classification/src/data/batches"
    
    # target = 'C:/MakeAIWork2/projects/apple_disease_classification/src/data/batches/batch_04/'
    
    directory = max([int(i) for i in os.listdir("C:/MakeAIWork2/projects/apple_disease_classification/src/data/batches/") + [0]])+1
    directory = f'{directory}'
    print("directory:", directory)
    path = os.path.join(parent_dir, directory)
    
    try:
        os.makedirs(path, exist_ok = True)
        print("Directory '%s' created successfully" % directory)
    except OSError as error:
        print("Directory '%s' can not be created" % directory)
   
    target = path
    print("target:", target)
     
    files = os.listdir(origin)

    for file_name in random.sample(files, 80):
        shutil.copy(origin+file_name, target+file_name)
        
    return target    
        

# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    getBatch()
    
    print("Files are copied successfully")
    
    # target = getBatch()
    # print(target)

# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main()   