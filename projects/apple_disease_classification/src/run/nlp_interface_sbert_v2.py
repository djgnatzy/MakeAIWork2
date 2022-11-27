from sentence_transformers import SentenceTransformer, util
import batch_classifier_v2 as bc
 
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
                      f"The batch contains {bc.appleScore} normal apples."
                     ]

print("\n___A conversation with the Apple Classifying chatbot___\n"
      "\n                  BOTNITA APPLEBUM\n"
      "\n(type 'quit', 'stop' or 'exit' to leave, once you're done)\n")  

def chatSbert(): 
    
    questions = 0
    
    while questions < 3:
        
        query_embedding = input("\nBotnita Applebum: What would you like to know regarding the tested batch of apples?\n")
        # TO DO: QUERY SHOULD NOT BE REPEATED FOR EVERY SINGLE QUESTION
        
        if query_embedding.lower() == "quit":
            # print("This terminal will self-destruct in 5, 4, 3 ...")
            break
        if query_embedding.lower() == "exit":
            # print("Thank you for flying with Pink Lady airlines! Goodbye.")
            break
        if query_embedding.lower() == "stop":
            # print("Stop, collaborate and listen...")
            break
    
        
        print("\nPink Lady employee:", query_embedding)
        # TO DO: THE ANSWER SHOULD ONLY BE PRINTED ONCE
        
        embeddingsApples = model.encode(sentencesOptimized)
        
        passage_embedding = model.encode(query_embedding, convert_to_tensor=True)
        answer_array = util.dot_score(passage_embedding, embeddingsApples)

        answer_location = answer_array.argmax()

        print("Botnita Applebum  :", sentencesOptimized[answer_location.item()])
        questions += 1   
        
        
    print("\nBotnita Applebum  : Those are all the questions I can answer today, see you tomorrow!\n"
          "\n                    And remember: An apple a day, keeps the doctor away!\n"
          "                    (unless it is rotten, blotched or scabbed)\n") 
    

# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    chatSbert()
    

# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main()
 
