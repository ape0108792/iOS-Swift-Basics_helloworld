//: Playground - noun: a place where people can play

import UIKit

/*고차함수 map
 map을 활용해 반복문을 대체한다
 
 map 함수는 배열과 함수를 매개변수로 받아서, 배열의 항목 하나하나에 매개변수로 받은 함수를 적용하는 함수이다.
 [a, b, c, d].map{f(x)}
  -> [f(a), f(b), f(c), f(d)]
 
 transactions 배열에 map 적용하기
 배열의 값은 Double
 함수는 Double을 받아 Double을 리턴
 배열의 값 각각에 함수를 적용한 결과 배열을 생성
 */

let transactions = [600.0, 403.3, 408.3, 562.3, 902.2]

func addVAT (source: Double) -> Double {
    return source * 1.1
}

var vatPrices:[Double] = []

for transaction in transactions {
    vatPrices += [addVAT(source: transaction)]
}

//map
let vatMapPrice = transactions.map({transaction -> Double in
    return transaction * 1.1
})

//축약
let vatMapprice2 = transactions.map({ $0 * 1.1 })
