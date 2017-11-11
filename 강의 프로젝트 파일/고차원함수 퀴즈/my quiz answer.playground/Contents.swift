//: Playground - noun: a place where people can play

import UIKit

//quiz 1
let hoody = ["구진선", "황도증", "임새로미", "하한메"]
for receiver in hoody {
    print(receiver + " received hoody")
}

//quiz 2
let num = [1, 2, 3, 4, 5]
for bigNum in num {
    if bigNum > 3 {
        print("\(bigNum) is bigger than 3")
    } else {
        print("\(bigNum) is less than 3")
    }
}

//quiz 3
var personHeight:[String:Int] = ["황도증":175, "하한메":182, "정윤지":167, "윤성관":170]
let standard = 170
for height in personHeight {
    if height.value > standard {
        print("\(height.key) is over 170cm")
    }
}

//quiz 4
var hoodyname3:[String] = []

for receiver in hoody{
    if receiver.count==3 {
        hoodyname3.append(receiver)
    }
    else{}
}

print(hoodyname3)


//Quiz 5
var transactions:[Int] = [1, 1, 1, 1, 1]
for var i in (1..<transactions.count){
    transactions.append(transactions[i]+transactions[i-1])
}
print(transactions)


