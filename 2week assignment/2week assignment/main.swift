//
//  main.swift
//  2week assignment
//
//  Created by Ji yeon Park on 2017. 1. 15..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation

print("Hello, World!")

let arrayPractice = ArrayPractice()

arrayPractice.printArray(array:arrayPractice.tempArray(lines:5))

print()

var myArray = ArrayPractice()

myArray.printArray(array:myArray.fillArray(lines : 5))

print()

myArray.printArray(array:myArray.fillArray1(lines : 5))

print()

myArray.printArray1(array:myArray.setBoolArray(lines :7))

print()

myArray.printArray(array: myArray.setBoolArray(lines :7), newChar: "$")
print()
print("--------- magicsquare ----------")
print()
myArray.printArraySquare(array: myArray.tempArray(rows:3))

print()

myArray.printXYArray1(array: myArray.numberArray)


