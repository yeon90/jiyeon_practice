//: Playground - noun: a place where people can play

import UIKit

func makeMagicSquare (row : Int) -> Array<Array<Int>> {
    var resultArray = Array<Array<Int>>()
    let A = row*row
    
    for _ in 1...row {
        let tempArray = Array<Int>(repeating:0, count : row)
        resultArray.append(tempArray)
    }
    
    resultArray[row-1][(row-1)/2] = 1

    func fillArray (Y:Int, X : Int, result : Int) -> (Int, Int) {
        var Y1 = (Y + 1) % row
        var X1 = (X - 1) % row
        if X1 < 0 {
            X1 = 2
            resultArray[Y1][X1] = result
        }
        else if (resultArray[Y1][X1] != 0 && 0 < Y-1 ) {
            Y1 = (Y-1)
            X1 =  X
            resultArray[Y1][X1] = result
        }
        else if (resultArray[Y1][X1] != 0 && Y1 < 0 ) {
            Y1 = 2
            X1 = X
            resultArray[Y1][X1] = result
        }
        else if (resultArray[Y1][X1] != 0 && X1 < 0) {
            Y1 = (Y - 1) % row
            X1 = X
            resultArray[Y1][X1] = result
        }
        else if (resultArray[Y1][X1] != 0 && 0 <= X1 && 0 < Y) {
            Y1 = (Y - 1) % row
            X1 = X
            resultArray[Y1][X1] = result
        }
        else {
            resultArray[Y1][X1] = result
        }
    return (Y1, X1)
    }
    
 var tuple = (row-1, (row-1)/2)
    for index in 2...A{
        tuple = fillArray(Y: tuple.0, X: tuple.1, result: index)
        
    }
    
    return resultArray
}



print(makeMagicSquare(row: 3))


