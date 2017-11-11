//: Playground - noun: a place where people can play

import UIKit


//quiz 1 for loop


let startNum = [1.0,2.0,3.0,4.0,5.0]

func addNum(source:Double) -> Double {
    return source + 5
}
/*
var endNum:[Double] = []

for num in startNum {
    endNum += [addNum(source:num)]
    print("\(num) have 5 more than startNum")
}
*/

var endNum:[Double] = []
let a = startNum.map({let a = $0
    print("\(addNum(source: a)) have 5 more than StartNum")
    endNum.append(addNum(source: a))
})



//quiz 2

var biggerNum:[Double] = []
/*
for num in endNum {
    if num >= 7 {
        biggerNum += [num]
    }
}
*/
endNum.map({
    let a = $0
    if a >= 7 {
    biggerNum += [a]
    } })
print("\(biggerNum)")



//quiz 3
func numSum (base:Double, adder:Double) -> Double {
    return base + adder
}

var sum:Double = 0.0
/*
for num in biggerNum {
    sum = numSum(base:sum, adder:num)
}
 */
biggerNum.map({ let a = $0
    sum = numSum(base:sum, adder:a)
})

//add 50 at sum of biggerNum
var add50More = 50.0

print("\(sum)")

// Quiz 4

let list4: [Double] = [10, 15, 20, 100, 150]
var result4: [Double] = []
func reproduceSelf (input: Double)->Double{
    return Double(pow(input,2)+input)
}
/*for item in list4 {
    result4.append(reproduceSelf(input: item))
}*/

list4.map({
    let a = $0
    result4.append(reproduceSelf(input: a))})
print("list4 is reproduced as \(result4)")


//Quiz 5
let list5: [Int] = [2, 3, 9, 16, 20]
var sum5: Int = 0
var result5: [Int] = []

/*for item in list5{
    sum5 += item
    result5.append(sum5)
}
*/
list5.map({
    let a = $0
    sum5 += a
    result5.append(sum5)
})
print ("Here are Sums of list5 step by step \(result5)")








