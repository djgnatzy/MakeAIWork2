from sentence_transformers import SentenceTransformer, util
import batch_classifier as bc
 
model = SentenceTransformer('all-MiniLM-L6-v2') 

sentencesOptimized = [
                      f"This batch has been classified as {bc.status}.",
                      f"This batch has been classified as {bc.status}.",
                      f"This batch has been classified as {bc.status}.",
                      f"This batch has been classified as {bc.status}.",
                      "The batch has been rejected.",
                      "The batch is completely unsuitable and will be composted.",
                      f"The batch contains {bc.appleScore} healthy apples, this is {bc.healthyPercentage}% of the total batch.",
                      f"The batch contains {bc.rotApple} rotten apples, this is {bc.rotPercentage}% of the batch.",
                      f"The batch contains {bc.blotchApple} apples with blotch, this is {bc.blotchPercentage}% of the batch.",
                      f"The batch contains {bc.scabApple} apples with scabs, this is {bc.scabPercentage}% of the batch.",
                      f"The batch has been rejected:\n"
                      f"                  With {bc.rotApple} rotten, {bc.blotchApple} blotched and {bc.scabApple} scabbed apples,\n"
                      f"                  a total of {bc.rejectedPercentage}% damage makes the batch completely unsuitable.",
                      f"The percentage of apples with diseases is {bc.rejectedPercentage}.",
                      f"The complete batch consist of {bc.lp.sampleBatch} apples."
                     ]

print("\nA conversation with Apple Classifying chatbot: Botnita Applebum")  

def chatSbert(): 
    
    questions = 0
    
    while questions < 3:
        query_embedding = input("\nBotnita Applebum: What would you like to know regarding the tested batch of apples?")
        
        print("\nYou             :", query_embedding)
        
        embeddingsApples = model.encode(sentencesOptimized)
        
        passage_embedding = model.encode(query_embedding, convert_to_tensor=True)
        answer_array = util.dot_score(passage_embedding, embeddingsApples)

        answer_location = answer_array.argmax()

        print("Botnita Applebum:", sentencesOptimized[answer_location.item()])
        questions += 1
        
    print("\nBotnita Applebum: Those are all the questions I can answer today, see you tomorrow!\n"
          "\n                  And remember: An apple a day, keeps the doctor away!\n"
          "                  (unless it is rotten, blotched or scabbed)\n") 
    

chatSbert() 


# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
# def main():
#     pass
    


# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    chatSbert()   
