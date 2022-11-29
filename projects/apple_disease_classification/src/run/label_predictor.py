#!/usr/bin/env python

# DEFINE IMPORTS HERE
import numpy as np

import tensorflow as tf
# from tensorflow.keras.models import load_model

import logging, os


logging.disable(logging.WARNING)
os.environ["TF_CPP_MIN_LOG_LEVEL"] = "3"


IMAGE_SIZE = 224
BATCH_SIZE = 80

# Dit bestand staat in de folder C:/MakeAIWork2/projects/apple_disease_classification/src/run  ... Relative Paths willen er niet aan ...

trainedModel = tf.keras.models.load_model(
    './models/33', # met Relative Path: ../models/33 wordt er niets gevonden...
    custom_objects=None, 
    compile=True, 
    options=None
)

aql_dataset = tf.keras.utils.image_dataset_from_directory(
      "./data",   # met Relative Path: ../data wordt er niets gevonden...
      shuffle=True,
      image_size=(IMAGE_SIZE, IMAGE_SIZE),
      batch_size = BATCH_SIZE,
      # labels=None
      )

# Met volledige Paths: "Found 695 files belonging to 9 classes" Check!

def getLabels():
    
    aql_ds = aql_dataset.skip(1)
    
    for element in aql_ds.as_numpy_iterator():
        X, y = element
        yhat = trainedModel.predict(X)
        prediction = (np.argmax(yhat, axis=-1))
        unique2, counts2 = np.unique(y, return_counts=True)
        dict(zip(unique2, counts2))

    unique2, counts2 = np.unique(prediction, return_counts=True)
    statistics = dict(zip(unique2, counts2))

    sampleBatch = (len(prediction))
   
    return statistics, sampleBatch

statistics, sampleBatch = getLabels()


# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    getLabels()   
    
    
# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    main()   