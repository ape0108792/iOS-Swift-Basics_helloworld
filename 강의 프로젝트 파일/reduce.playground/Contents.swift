//: Playground - noun: a place where people can play

import UIKit

/*하나의 값으로 수렴하도록 할 때 사용하는 함수. 배열과 병합에 사용하는 함수를 매개변수로 받아서 하나의 값을 결과로 리턴한다. 개발 시 사용하는 많은 작업들은 reduce 함수를 이용해 해결할 수 있다
 
 transaction의 총합을 구하기
 base는 시작 값이며 adder는 이번에 더할 값
 축약 시 병합원칙을 간단한 오퍼레이터로 제공할 수 있다.
 */
let transactions = [600.0, 403.3, 408.3, 562.3, 902.2]

func addVAT (source: Double) -> Double {
    return source * 1.1
}

var vatPrices:[Double] = []

for transaction in transactions {
    vatPrices += [addVAT(source: transaction)]
}

func priceSum (base:Double, adder:Double) -> Double {
    return base + adder
}

var sum:Double = 0.0
for price in vatPrices {
    sum = priceSum(base: sum, adder: price)
}

//reduce를 활용
var sum2:Double = 0.0
let sumReduce1 = vatPrices.reduce(0.0, priceSum)
let sumReduce2 = vatPrices.reduce(sum2, {base, adder in base + adder} )
let sumReduce3 = vatPrices.reduce(0.0, +)

// Double 배열로 하나의 문자열 만들기. 배열의 값을 이용해 하나의 문자열을 만들 때 reduce 함수 사용 가능
let pricesString = vatPrices.reduce("", {$0 + "\($1)\n"})
print(pricesString)

//meetingRooms의 키, 값을 이용해 하나의 문자열 만들기. 시작할 문자열을 base 값으로 제공. 더해질 문자열을 adder로 제공
var meetingRooms:[String:Int] = ["A":10, "B":20, "C":30, "D":40]
let desxriptionString = meetingRooms.reduce("We have meeting rooms : \n", {$0 + "\($1.key) for \($1.value) persons \n"})
