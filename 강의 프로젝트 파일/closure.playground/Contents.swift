//: Playground - noun: a place where people can play

import UIKit

/*클로저는 1등시민으로 사용가능한 독립적인 코드조각이다.
 자신이 정의된 환경을 캡처해서 저장한 뒤 닫아버린다고 해서 클로저라 부름
 Objective-C의 Block이나 Java의 Lambda도 클로저의 일종
 in 이 사용되면 클로저.
 하지만 in은 흔히 생략됨
 */

let addVATClosure = { (source:Double) -> Double in return source * 1.1}
let couponDiscountClosure = { (source:Double) -> Double in return source * 0.9 }

let price1023 = addVATClosure(350.3)

//클로져의 축약1 - 타입을 추론. 들어론 매개변수와 같은 타입을 리턴한다
let addVATClosure2 = { source in return source * 1.1}

//클로저의 축약2 - 리턴 생략. 클로저는 무조건 값을 리턴하므로
let addVATClosure3 = { source in source * 1.1}

//클로저의 축약3 - 매개변수 생략. 매개변수를 위치로 참조한다. 첫번째 매개변수 = $0, 두번째 매개변수 = $1 etc
let addVATClosure4 = { $0 * 1.1}
let couponDiscountClosure4 = { $0 * 0.9 }

let price = addVATClosure4(400)
