from sentence_transformers import SentenceTransformer, util
import batch_classifier as bc
 
model = SentenceTransformer('all-MiniLM-L6-v2') 


sampleBatch = bc.lp.sampleBatch 

appleScore = bc.appleScore
blotchApple = bc.blotchApple
rotApple = bc.rotApple
scabApple = bc.scabApple
rejectedApple = bc.rejectedApple

healthyPercentage = bc.healthyPercentage
blotchPercentage = bc.blotchPercentage
rotPercentage = bc.rotPercentage
scabPercentage = bc.scabPercentage
rejectedPercentage = bc.rejectedPercentage

status = bc.status

sentencesOptimized = [
                      f"This batch has been classified as {status}.",
                      f"This batch has been classified as {status}.",
                      f"This batch has been classified as {status}.",
                      f"This batch has been classified as {status}.",
                      "The batch has been rejected.",
                      "The batch is completely unsuitable and will be composted.",
                      f"The batch contains {appleScore} healthy apples, this is {healthyPercentage}% of the total batch.",
                      f"The batch contains {rotApple} rotten apples, this is {rotPercentage}% of the batch.",
                      f"The batch contains {blotchApple} apples with blotch, this is {blotchPercentage}% of the batch.",
                      f"The batch contains {scabApple} apples with scabs, this is {scabPercentage}% of the batch.",
                      f"The batch has been rejected:\n"
                      f"                  With {rotApple} rotten, {blotchApple} blotched and {scabApple} scabbed apples,\n"
                      f"                  a total of {rejectedPercentage}% damage makes the batch completely unsuitable.",
                      f"The percentage of apples with diseases is {rejectedPercentage}.",
                      f"The complete batch consist of {sampleBatch} apples."
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


# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    chatSbert()  


# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main()
