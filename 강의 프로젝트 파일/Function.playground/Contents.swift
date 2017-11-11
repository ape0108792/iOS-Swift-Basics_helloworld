 //: Playground - noun: a place where people can play

import UIKit

var title = "Tutorial for swift"
var ratings:[Double]? = nil
var supportUrl:String! = nil

supportUrl = "www.DJ.com"
ratings = [2.0, 3.5, 4.5, 5.0, 3.5]

//함수
func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history {
        if min > value {min = value}
        if max < value {max = value}
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

var bookDescription:String = "\(title)"
if let theRating = ratings {
    let record = ratingRecord(history: theRating)
    bookDescription += " has \(theRating.count) ratings, \r\naverage is \(record.average), from \(record.min) to \(record.max)"
}

bookDescription += "\r\nsupport webpage : \(supportUrl)"

print(bookDescription)


//Time타입의 인자를 2개 받아, 둘을 더 한 시간을 리턴하는 함수를 만들어주세요. 시간을 나타내는 타입 Time은 typealias로 정의되어 있습니다.
typealias Time = (minute:Int, second:Int)

let lunch = (16, 37)
let walk = (18, 48)

// 함수의 인자와 리턴 타입을 명시해주세요
func addTime (time1:Time, time2:Time) -> Time {
    let secondSum = time1.second + time2.second
    let second = secondSum % 60
    let minute = time1.minute + time2.minute + (secondSum / 60)
    
    // minute과 second를 이용해서 적절한 값을 리턴해주세요
    return Time(minute, second)
}

//atNoon의 값은 (35, 25) 이어야 합니다.
let atNoon = addTime(time1:lunch, time2:walk)
print(atNoon)
