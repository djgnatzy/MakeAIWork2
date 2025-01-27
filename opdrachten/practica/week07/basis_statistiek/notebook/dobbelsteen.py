#!/usr/bin/env python

import random
import numpy as np

class Dobbelsteen:
    
    def __init__(self):
        self.history = list()
        self.values = set(range(1, 7))  
        self.roll()
        
        # https://realpython.com/python-dice-roll
        self.faces = {

            1: (

                "┌─────────┐\n"
                "│         │\n"
                "│    ●    │\n"
                "│         │\n"
                "└─────────┘\n"
            ),

            2: (

                "┌─────────┐\n"
                "│  ●      │\n"
                "│         │\n"
                "│      ●  │\n"
                "└─────────┘"
            ),

            3: (

                "┌─────────┐\n"
                "│  ●      │\n"
                "│    ●    │\n"
                "│      ●  │\n"
                "└─────────┘"
            ),

            4: (

                "┌─────────┐\n"
                "│  ●   ●  │\n"
                "│         │\n"
                "│  ●   ●  │\n"
                "└─────────┘"

            ),

            5: (

                "┌─────────┐\n"
                "│  ●   ●  │\n"
                "│    ●    │\n"
                "│  ●   ●  │\n"
                "└─────────┘"
            ),

            6: (

                "┌─────────┐\n"
                "│  ●   ●  │\n"
                "│  ●   ●  │\n"
                "│  ●   ●  │\n"
                "└─────────┘"

            )

        }

    def getList(self):
        return list(self.values)

    def roll(self):
        self.number = random.choice(self.getList())
        self.history.append(self.number)
        
    # def oneThousandRolls(self):
    #     for _ in range(0,1000): 
    #         return self.roll()    

    def getNumber(self):
        return self.number

    def show(self):        
        return str(self.faces.get(self.number))
    
    def getHistory(self):
        return np.array(self.history)

def main():
    d = Dobbelsteen()
    d.roll()
    d.show()

if __name__ == main():
    main()                