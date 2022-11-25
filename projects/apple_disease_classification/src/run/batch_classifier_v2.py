#!/usr/bin/env python

# DEFINE IMPORTS HERE
import label_predictor as lp


blotchApple = lp.statistics[0]    
appleScore = lp.statistics[1]
rotApple = lp.statistics[2]
scabApple = lp.statistics[3] 
rejectedApple = int(blotchApple) + int(rotApple) + int(scabApple)

healthyPercentage = round(appleScore / (lp.sampleBatch) * 100)
blotchPercentage = round(blotchApple / (lp.sampleBatch) * 100)
rotPercentage = round(rotApple / (lp.sampleBatch) * 100)
scabPercentage = round(scabApple / (lp.sampleBatch) * 100)
rejectedPercentage = round(blotchPercentage + rotPercentage + scabPercentage)


def getAQLClass(): 
    
    if lp.sampleBatch != 80:
    
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
         
        # print(f'\nThe batch has been qualified as: {status}\n')
                
        # print (f'The total batch of {lp.sampleBatch} apples consists of:\n'
        # f'Healthy apples:    {appleScore}    ({healthyPercentage}%)\n'
        # f'Blotched apples:   {blotchApple}    ({blotchPercentage}%)\n'
        # f'Rotten apples:     {rotApple}    ({rotPercentage}%)\n'
        # f'Scabbed apples:    {scabApple}    ({scabPercentage}%)\n') 
        
        # print(f'The total rejected percentage is {rejectedPercentage}%, which is a total amount of', rejectedApple, 'apples.\n')
        
        return status, lp.sampleBatch, blotchApple, appleScore, rotApple, scabApple, rejectedApple, healthyPercentage, blotchPercentage, rotPercentage, rejectedPercentage, scabPercentage


status, lp.sampleBatch, blotchApple, appleScore, rotApple, scabApple, rejectedApple, healthyPercentage, blotchPercentage, rotPercentage, rejectedPercentage, scabPercentage = getAQLClass()


# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    getAQLClass()  

    # print statements are not visible when file is imported to chatbot
    print(f'\nThe batch has been qualified as: {status}\n')
                
    print (f'The total batch of {lp.sampleBatch} apples consists of:\n'
    f'Healthy apples:    {appleScore}    ({healthyPercentage}%)\n'
    f'Blotched apples:   {blotchApple}    ({blotchPercentage}%)\n'
    f'Rotten apples:     {rotApple}    ({rotPercentage}%)\n'
    f'Scabbed apples:    {scabApple}    ({scabPercentage}%)\n') 
    
    print(f'The total rejected percentage is {rejectedPercentage}%, which is a total amount of', rejectedApple, 'apples.\n')
        
        
# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main() 