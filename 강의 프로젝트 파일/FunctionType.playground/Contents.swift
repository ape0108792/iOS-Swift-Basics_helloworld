//: Playground - noun: a place where people can play

import UIKit

/*함수는 1등 시민
 함수는 어디든 갈 수 있는 권리가 있다
 변수에 할당
 매개변수로 사용
 리턴타입으로 사용
 
 우리가 알고 있는 타입들
 String, Double, Int 같은 기본 타입들
 Array, Dictionary, Set 같은 컬렉션 타입
 UIView, UILabel, UItableView 같은 코코아 클래스 타입
 
 +  함수타입
 () -> Void 또는 (Int, Int) -> Int 같은 함수타입
 */

func addVAT (source:Double) -> Double {
    return source * 1.1
}

func couponDiscount (source:Double) -> Double {
    return source * 0.9
}

//함수타입의 변수 선언
var additional:(Double) -> Double

let transaction1023 = 300.5
//함수를 변수에 할당
additional = addVAT

let price1023 = additional(transaction1023)

//함수를 매개변수로 받는 함수
func finalPrice (source:Double, additional:(Double) -> Double) -> Double {
    let price = additional(source)
    return price
}

let price1024 = finalPrice(source: 350.0, additional: couponDiscount)
