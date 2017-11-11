//: Playground - noun: a place where people can play

import UIKit

//Dictionary. [key:value]
var roomCapacity:[String:Int] = ["A":10, "B":20, "P":8, "S":10, "E":30]

//딕셔너리의 추가
roomCapacity["R"] = 40
roomCapacity["A"]

//let roomNames = roomCapacity.keys
//let capacity = roomCapacity.values

//딕셔너리에서 값을 배열로 가지고 오는 방법
let roomNames = [String](roomCapacity.keys)
let capacity = [Int](roomCapacity.values)

//set. 순서를 가지지 않는 컬렉션. 집합연산이 필요한 경우. intersection, Subtract, Union, symmetricDifference
let subway2:Set = ["사당", "방배", "서초", "교대", "강남", "삼성", "신도림", "신림"]
let subway3:Set = ["사당", "블라", "몰리", "서초", "강남", "모름", "가라", "거나나"]

let transfer = subway2.intersection(subway3)

//영웅들로 구성된 파티를 만들어, 상대방의 파티와 싸우는 게임을 만드려고 합니다. 기존 파티 heros에 새로운 영웅 newHero를 파티의 맨 앞에 영입하는 완성하세요. heros에 새로운 항목을 추가할 수 있도록 만든 뒤, newHero를 맨 앞에 추가하면 됩니다.
var heros = ["프린스", "마녀", "해골 군대", "고블린 통"]
let newHero = "흑룡"

heros.insert(newHero, at: 0)

print(heros)

//상대방의 영웅 파티가 나타났습니다. 상대방과 겨룰 때에는 서로 겹치는 영웅들끼리만 대전을 할 수 있습니다. 내가 가진 영웅 heros과 상대의 영웅 oppHeros끼리 겹치는 영웅으로 이루어진 Set인 intersectHeros를 구하세요.
let heros2:Set = ["프린스", "마녀", "해골 군대", "고블린 통"]
let oppHeros2:Set = ["자이언트 해골", "고블린 통", "대형석궁", "프린스"]

// 상대와 겹치는 영웅들로 이뤄진 set을 완성하세요
let intersectHeros = heros2.intersection(oppHeros2)

print(intersectHeros)
