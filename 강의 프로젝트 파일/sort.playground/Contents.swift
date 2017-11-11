//: Playground - noun: a place where people can play

import UIKit

/*고차함수 sort 함수는 배열과 정렬 조건이 있는 함수를 매개변수로 받아서, 정렬방식에 적당하게 정렬된 새로운 배열을 만드는 함수이다.
 
 ascendant는 < 을 사용하며 작은 것부터 큰 순으로 정렬됩니다. 비디오에서처럼 >를 사용하면 descendant 정렬이 됩니다
 
 transaction을 크기에 따라 정렬하기
 두 개의 값을 비교하는 정렬 기준을 함수로 제공
 적용 시 조건에 따라 정렬된 배열 생성
 meetingRooms를 정원 순으로 정렬하기
 딕셔너리에 sort를 적용하면 튜플의 배열로 변환
 meetingRooms의 value는 튜플에서 .1로 접근 가능
 */
let transactions = [600.0, 403.3, 408.3, 562.3, 902.2]

func addVAT (source: Double) -> Double {
    return source * 1.1
}

var vatPrices:[Double] = []

for transaction in transactions {
    vatPrices += [addVAT(source: transaction)]
}

func ascedantSort (sort1:Double, sort2:Double) -> Bool {
    return sort1 > sort2
}

let sortedPrice = vatPrices.sorted(by: ascedantSort)

let sortedPrices2 = vatPrices.sorted(by: { sort1, sort2 in
    return sort1 > sort2})

let sortedPrices3 = vatPrices.sorted(by: { $0 > $1 })

print("\(sortedPrices3)")
