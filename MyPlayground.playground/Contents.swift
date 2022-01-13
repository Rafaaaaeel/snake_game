import Foundation

let finalSquare = 25

var board = [Int] (repeating: 0, count: finalSquare + 1)
board[03] = +8; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -2; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare{
    diceRoll += 1
    if diceRoll == 7 {
        diceRoll = 1
    }
    
    switch square + diceRoll{
    case finalSquare:
        print("Inside break case")
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        print("Inside continue swith case")
        continue gameLoop
    default:
        square += diceRoll
        square += board[square]

    }
}
print("Game over!")



