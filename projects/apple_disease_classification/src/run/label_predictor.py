#!/usr/bin/env python

# DEFINE IMPORTS HERE
import numpy as np

import tensorflow as tf
from tensorflow.keras.models import load_model


IMAGE_SIZE = 224
BATCH_SIZE = 80


trainedModel = tf.keras.models.load_model(
    'C:\MakeAIWork2/projects/apple_disease_classification/models/17', 
    custom_objects=None, 
    compile=True, 
    options=None
)

aql_dataset = tf.keras.utils.image_dataset_from_directory(
      "C:/MakeAIWork2/projects/apple_disease_classification/src/data/batches",
      shuffle=True,
      image_size=(IMAGE_SIZE, IMAGE_SIZE),
      batch_size = BATCH_SIZE,
      # labels=None
      )

aql_ds = aql_dataset.skip(1)


def getLabels():
    
    for element in aql_ds.as_numpy_iterator():
        X, y = element
        yhat = trainedModel.predict(X)
        prediction = (np.argmax(yhat, axis=-1))
        unique2, counts2 = np.unique(y, return_counts=True)
        dict(zip(unique2, counts2))

    unique2, counts2 = np.unique(prediction, return_counts=True)
    statistics = dict(zip(unique2, counts2))

    sampleBatch = (len(prediction))
    # print(statistics, sampleBatch)
    return statistics, sampleBatch

statistics, sampleBatch = getLabels()


# IMPLEMENT RUNNABLE CODE INSIDE THIS MAIN 
def main():
    pass
    


# DO NOT IMPLEMENT ANYTHING HERE
if __name__ == "__main__":
    getLabels()   