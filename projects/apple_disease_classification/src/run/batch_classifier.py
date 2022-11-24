#!/usr/bin/env python

# DEFINE IMPORTS HERE
# from .label_predictor import getLabels

sampleBatch = 80

blotchApple = 1    #statistics[0]    
appleScore = 79      #statistics[1]
rotApple = 0        #statistics[2]
scabApple = 0 #statistics[3] 
rejectedApple = int(blotchApple) + int(rotApple) + int(scabApple)

healthyPercentage = round(appleScore / (sampleBatch) * 100)
blotchPercentage = round(blotchApple / (sampleBatch) * 100)
rotPercentage = round(rotApple / (sampleBatch) * 100)
scabPercentage = round(scabApple / (sampleBatch) * 100)
rejectedPercentage = round(blotchPercentage + rotPercentage + scabPercentage)


def getAQLClass(): 
    
    if sampleBatch != 80:
    
        print ("A batch of exactly 80 apples is required for a correct quality control")
        
    else:    
       
        if appleScore >=79:                                          
            status = 'Class 1'
        elif appleScore >=75:
            status = 'Class 2'
        elif appleScore >=73:
            status = 'Class 3'
        else:
            status = 'Rejected'
         
        print(f'\nThe batch has been qualified as: {status}\n')
                
        print (f'The total batch of {sampleBatch} apples consists of:\n'
        f'Healthy apples:    {appleScore}    ({healthyPercentage}%)\n'
        f'Blotched apples:   {blotchApple}    ({blotchPercentage}%)\n'
        f'Rotten apples:     {rotApple}    ({rotPercentage}%)\n'
        f'Scabbed apples:    {scabApple}    ({scabPercentage}%)\n')    
        
        print(f'The total rejected percentage is {rejectedPercentage}%, which is a total amount of', rejectedApple, 'apples.\n')
        # break    


# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    pass
    


# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    getAQLClass() 