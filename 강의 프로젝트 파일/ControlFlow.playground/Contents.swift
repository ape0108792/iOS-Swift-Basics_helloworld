//: Playground - noun: a place where people can play

import UIKit

//for문과 if문
let subway2:Set = ["사당", "방배", "서초", "교대", "강남", "삼성", "신도림", "신림"]
let subway3:Set = ["사당", "블라", "몰리", "서초", "강남", "모름", "가라", "거나나"]
let transfer = subway2.intersection(subway3)

if transfer.count > 0 {
    print("환승역은 \(transfer)입니다")
} else {
    print("환승역은 없습니다")
}

for station in subway3 {
    print("이번 역은 \(station)입니다")
}

//switch문
//딕셔너리를 for문으로 돌릴 때, 튜플로 받아 올 수 있다.
var roomCapacity:[String:Int] = ["A":10, "B":20, "P":8, "S":10, "E":30, "G":40, "C":4]

for (roomName, capacity) in roomCapacity {
    let roomDescription:String
    switch capacity {
    case 4:
        roomDescription = "\(roomName)은 스터디룸이며 정원은 \(capacity)명입니다."
    case 5...10:
        roomDescription = "\(roomName)은 팀세미나룸이며 정원은 \(capacity)명입니다."
    case 11...30:
        roomDescription = "\(roomName)은 그룹세미나룸이며 정원은 \(capacity)명입니다."
    case _ where capacity > 30:
        roomDescription = "\(roomName)의 정원은 \(capacity)이며 별도의 신청이 필요합니다."
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해주세요."
    }
}


//그마트에서는 아이템 수량에 따라 계산 카운터를 안내하는 차세대 카트를 도입하려고 합니다. 카트에 담긴 맥주 수량에 따라3병 이하는 소량 계산대로 보내고, 4병부터 50병까지는 일반 계산대로 보내고, 51병 부터 100병까지의 구매는 매니저에게 연락하고, 100병 이상은 경찰에 신고하는 switch문을 완성해 주세요.

typealias ShopingItem = (name:String, amount:Int)
let cart = ShopingItem("beer", 1)

switch cart {
case ("beer", 0...3) : //맥주 3병 이하
    print("Guide to small item counter")
case ("beer", 51...100) : //맥주 51병이상 100병 까지
    print("Call manager")
case ("beer", let amount) where amount > 100 : //맥주 100병 초과
    print("Call police")
default: //나머지(맥주 4병 이상 50병 이하)
    print("Make wait in line")
}
