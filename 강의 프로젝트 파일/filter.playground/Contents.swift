//: Playground - noun: a place where people can play

import UIKit

/*고차함수 map
 filter 함수는 배열과 조건문이 있는 함수를 매개변수로 받아서, 배열의 하나하나에 함수의 조건문을 적용해서 통과하는 항목만으로 새로운 배열을 만드는 함수이다.
 
 transactions 배열에서 큰 값만 추려내기
 거래금액이 500 이상인 경우 true를 리턴하는 함수
 적용 시 조건에 맞는 항목만으로 이루어진 배열 생성
 meetingRooms 딕셔너리에 filter 적용하기
 딕셔너리에 filter를 적용하면 튜플의 배열로 변환
 meetingRooms의 value는 튜플에서 .1로 접근 가능
 */

var meetingRooms:[String:Int] = ["A":10, "B":20, "C":30, "D":40]

let members = 20
//filter. 딕셔너리의 키나 벨류 값에 접근할 수 있다
let available = meetingRooms.filter( {$0.value > 20} )

print("\(available)")
