//: Playground - noun: a place where people can play

import UIKit

//배열의 선언
var meetingRoom:Array<String> = ["A","B","P","S","E"]
var groups:[Int] = [10, 8, 8, 6]

meetingRoom += ["R"]

//배열의 추가1
var currentSpeed = 20
var speedHistory:[Int] = []
speedHistory += [currentSpeed]
let gps = 114.1
let gps2 = 220.2

//배열의 추가2
speedHistory.append(Int(gps))

//배열의 추가3
speedHistory.insert(Int(gps2), at: 0)

speedHistory[0]
speedHistory.first

//배열의 복제. 바로 되지 않고 둘 중 하나의 값이 변경이 될 때 복제된다
let historyBackup = speedHistory
speedHistory += [130]
historyBackup
