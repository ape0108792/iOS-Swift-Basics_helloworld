//: Playground - noun: a place where people can play

import UIKit

var title = "Hello, playground"
var ratings:[Int]? = nil
var supportUrl:String? = nil

supportUrl = "www.DJ.com"
//print("\(title) has \(ratings!.count). \r\n support to webpage : \(supportUrl)")

//force unwrapping
//물음표로 옵셔널을 선언하고 느낌표로 데이터를 확신한다고 표시. 느낌표가 많으면 크래쉬가 날 가능성이 많다
var bookDescription:String = "\(title)"
if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}
if supportUrl != nil {
    bookDescription += "\r\nsupport webpage : \(supportUrl!)"
}

print(bookDescription)

//optional binding.
if let theRating = ratings {
    bookDescription += "has \(theRating) ratings"
}
if let theURL = supportUrl {
    bookDescription += "\r\nsupport webpage : \(theURL)"
}


//implicitly unwrapped optional.
//옵셔널 사용을 편하게 하기 위한 편의장치. 어쩔 수 없이 옵셔널이지만 실행 중 항상 값을 가지는 게 거의 확실.
var URL:String! = nil
//선언 시에 !를 사용해 선언하고, 후에 옵셔널이 아닌 것처럼 사용한다.

