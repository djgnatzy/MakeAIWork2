#!/usr/bin/env python

# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    
    #https://www.geeksforgeeks.org/usage-of-__main__-py-in-python/
    print("\n_____MENU_____\n")
    print("Choose 1: to talk to the -SBERT- chatbot\n"
    "Choose 2: to talk to the -NLTK- chatbot\n"
    
    "\n-- Please choose 1 as version 2 is currently not working in the terminal :( ---\n")
    # RuntimeError: `tf.data.Dataset.as_numpy_iterator()` is only supported in eager mode.
    # error in label_predictor.py, which is functional on its own
  
    ch = int(input())
  
    if ch == 1:
        import nlp_interface_sbert_v2 as sb
        sb.chatSbert()
    
    
    if ch == 2:
        import nlp_interface_nltk as nl
        nl.chatNLTK()
    
        
#     if __name__ == "__main__": 
#         print("File_run is being run directly")
#     else: 
#         print("File_run is being imported")
        
    
# print("File_run __name__ = %s" %__name__)


# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main()  