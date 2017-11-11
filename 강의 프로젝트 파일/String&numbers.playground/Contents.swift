//: Playground - noun: a place where people can play

import UIKit

let name = "DJ"

var greeting = "Hello"
greeting += " " + name


//문자열에 각각의 문자에 접근할 수 있도록 해주는 characters (일종의 배열로 리턴)
let character = name.characters
let count = character.count

//문자열의 앞 혹은 뒤에 특정 문자열이 들어가있는지 불리안 값으로 리턴해주는 hasPrefix, hasSuffix
let url = "www.dj.com"
let hasProtocol = url.hasPrefix("www")

// 변수의 타입을 맞춰줘야한다.
var speed:Int = 20
speed += Int(10.5)

let pi = 3.14
let divider = 2
let halfPi = 3.14/Double(divider)

//String타입도 넘버로 바꿔줄 수 있음
let text:String = "213"
let textToNumber = Int(text)
speed += textToNumber!

//String타입을 넘버로 바꾸는 방법2
let occur = "10"
if let occ = Int(occur) {
    print("By optional binding :", occ*2) // 20
    
}

//판교와 파주 사이에 거리는 69500m입니다. 2번째 줄의 distance를 적당한 타입으로 변경해서 description을 다음과 같이 출력되게 완성해보세요. "판교에서 파주는 69.5km 거리입니다."
let distance = 69500
let description = "판교에서 파주는 " + "\(Double(distance)/1000)" + "km 거리입니다."

print(description)
