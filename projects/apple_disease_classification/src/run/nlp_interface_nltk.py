#!/usr/bin/env python

# DEFINE IMPORTS HERE
import nltk
nltk.download("all")
from nltk.stem.lancaster import LancasterStemmer
stemmer = LancasterStemmer()

import tflearn
import numpy
import tensorflow
import random
import json
import pickle

import batch_classifier as bc

with open("intents_apples.json") as file:
    data = json.load(file)

# try:
#     with open("data.pickle", "rb") as f:
#         words, labels, training, output = pickle.load(f)
    # except:
    words = []
    labels = []
    docs_x = []
    docs_y = []

    for intent in data["intents"]:
        for pattern in intent["patterns"]:
            wrds = nltk.word_tokenize(pattern)
            words.extend(wrds)
            docs_x.append(wrds)
            docs_y.append(intent["tag"])

        if intent["tag"] not in labels:
            labels.append(intent["tag"])

    words = [stemmer.stem(w.lower()) for w in words if w != "?"]
    words = sorted(list(set(words)))

    labels = sorted(labels)

    training = []
    output = []

    out_empty = [0 for _ in range(len(labels))]

    for x, doc in enumerate(docs_x):
        bag = []

        wrds = [stemmer.stem(w.lower()) for w in doc]

        for w in words:
            if w in wrds:
                bag.append(1)
            else:
                bag.append(0)

        output_row = out_empty[:]
        output_row[labels.index(docs_y[x])] = 1

        training.append(bag)
        output.append(output_row)


    training = numpy.array(training)
    output = numpy.array(output)

    with open("data.pickle", "wb") as f:
        pickle.dump((words, labels, training, output), f)

tensorflow.compat.v1.reset_default_graph()

net = tflearn.input_data(shape=[None, len(training[0])])
net = tflearn.fully_connected(net, 8)
net = tflearn.fully_connected(net, 8)
net = tflearn.fully_connected(net, len(output[0]), activation="softmax")
net = tflearn.regression(net)

model = tflearn.DNN(net)

try:
    model.load("model.tflearn")
except:
    model.fit(training, output, n_epoch=1000, batch_size=8, show_metric=True)
    model.save("model.tflearn")


def bag_of_words(s, words):
    bag = [0 for _ in range(len(words))]

    s_words = nltk.word_tokenize(s)
    s_words = [stemmer.stem(word.lower()) for word in s_words]

    for se in s_words:
        for i, w in enumerate(words):
            if w == se:
                bag[i] = 1
            
    return numpy.array(bag)


def replaceResponse(response):
    
    response = response.replace("(sampleBatch)", f"{bc.lp.sampleBatch}")
    response = response.replace("(appleScore)", f"{bc.appleScore}")
    response = response.replace("(blotchApple)", f"{bc.blotchApple}")
    response = response.replace("(scabApple)", f"{bc.scabApple}")
    response = response.replace("(rotApple)", f"{bc.rotApple}")
    response = response.replace("(rejectedApple)", f"{bc.rejectedApple}")
    
    response = response.replace("(healthyPercentage)", f"{bc.healthyPercentage}")
    response = response.replace("(blotchPercentage)", f"{bc.blotchPercentage}")
    response = response.replace("(rotPercentage)", f"{bc.rotPercentage}")
    response = response.replace("(scabPercentage)", f"{bc.scabPercentage}")
    response = response.replace("(rejectedPercentage)", f"{bc.rejectedPercentage}")

    response = response.replace("(classOne)", f"{bc.status}")          # all to one variable == done
  
    return response

def chatNLTK():
    
    print("\nStart talking with Botnita Applebum.\nAsk her anything about apples!\n\nType quit to stop\n")
    while True: # omdat Pieter het spannend wil houden anders
 
        inp = input("You: ")
        if inp.lower() == "quit":
            print("This terminal will self-destruct in 5, 4, 3 ...")
            break
        if inp.lower() == "exit":
            print("Thank you for flying with Pink Lady airlines! Goodbye.")
            break
        if inp.lower() == "stop":
            print("Stop, collaborate and listen...")
            break

        results = model.predict([bag_of_words(inp, words)])
        results_index = numpy.argmax(results)
        tag = labels[results_index]

        for tg in data["intents"]:
            if tg['tag'] == tag:
                responses = [replaceResponse(response)
                             for response in tg['responses']]
                
                # responses = tg['responses']

        print(random.choice(responses))


# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    chatNLTK()   
    


# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main()