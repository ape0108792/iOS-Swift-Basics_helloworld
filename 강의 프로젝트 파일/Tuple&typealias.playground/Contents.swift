//: Playground - noun: a place where people can play

import UIKit

//튜플은 콤마로 구분되는 값들의 리스트
//튜플 안에는 다양한 타입이 함께 섞여 들어갈 수 있다. 물론 튜플이 또 들어갈 수 있다.

let time1 = (9, 10, 12)
time1.0
let time2:(h:Int, m:Int, s:Int) = (11, 22, 33)
time2.h

let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h


//타입을 새로이 지정할 수 있다.
typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9,19,2), (22,30,10))
print("We studied until \(today.end.h) today")

/*
 트라이애슬론은 수영, 사이클, 달리기가 합쳐진 운동으로, 우리에게 철인 3종 경기라는 이름으로 잘 알려져 있습니다. 트라이애슬론에는 단거리 경주인 sprint와 장거리 경기인 ironMan 경기가 있습니다.
 
 ironMan경기의 사이클 거리가 sprint경기의 사이클 거리의 몇배인지를 times에 저장하고 싶습니다. 코드 5번째 줄의 _____를 수정해서 times에 값을 저장하세요.
*/
typealias Triathlon = (swim:Int, cycle:Int, running:Int)
let sprint = Triathlon(750, 20000, 5000)
let ironMan = Triathlon(3800, 180000, 42200)

//let times = ______
let times = ironMan.cycle/sprint.cycle

// 아래는 결과 테스트를 위한 코드입니다. 수정하지 마세요.
print(times)
 
