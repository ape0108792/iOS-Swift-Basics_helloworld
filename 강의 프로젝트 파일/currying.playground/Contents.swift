//: Playground - noun: a place where people can play

import UIKit

/*다른 함수를 매개변수로 받거나 함수를 리턴타입으로 사용하는 함수를 고차함수라고 한다.]
 이번에는 함수를 리턴하는 함수를 사용해 본다
 
 makeAdder 함수
 함수안에서 함수를 생성해서 리턴한다
 makeAdder는 결과적으로 두 개의 정수를 더하는 함수
 하나의 정수를 받아서, 정수를 받아 정수를 리턴하는 함수를 만들어 리턴한다
 이런 식으로 여러 개의 매개변수를 받는 함수를 쪼개서 하나의 매개변수를 받은 뒤 나머지 매개변수를 받는 함수를 리턴하는 함수를 커링(Currying)함수라고 한다
 */

let addVATClosure = { (source:Double) -> Double in return source * 1.1}
let couponDiscountClosure = { (source:Double) -> Double in return source * 0.9 }

let price1023 = addVATClosure(350.3)

let addVATClosure2 = { source in return source * 1.1}
let addVATClosure3 = { source in source * 1.1}
let addVATClosure4 = { $0 * 1.1}
let couponDiscountClosure4 = { $0 * 0.9 }

let price = addVATClosure4(400)


func makeAdder (x:Int) -> (Int) -> Int {
    func adder (a:Int) -> Int {
        return x + a
    }
    return adder
}
//클로져를 사용
func makeAdder2 (x:Int) -> (Int) -> Int {
    let adder:(Int) -> Int = {
        return $0 + x
    }
    return adder
}

func makeAdder3 (x:Int) -> (Int) -> Int {
    return {
        return $0 + x
    }
}

let add5 = makeAdder(x: 5)
let add10 = makeAdder2(x: 10)

print(add5(2))
print(add10(2))
//함수를 리턴하는 함수는 이런 식으로 두 개의 매개변수를 넣을 수도 있다
print(makeAdder2(x: 5)(2))
