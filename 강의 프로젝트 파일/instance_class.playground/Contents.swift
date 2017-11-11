//: Playground - noun: a place where people can play

import UIKit

struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
}

/*데이터 모델의 중요한 구성요소로써 Object를 만든다
 클래스는 객체지향 프로그래밍(OOP, Object Oriented Programming)의 바탕을 이룬다
 
 클래스로 만든 오브젝트는 Reference Type으로 동작하며, 할당시 복사되지 않는다
 하나의 인스턴스에 대한 레퍼런스를 공유한다
 인스턴스를 할당한 뒤 수정하면 원본과 할당된 곳 모두 수정됨
 */

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
}

//class는 let으로 정의해도 프라퍼티가 var이면 수정 가능
let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-3398-9879"

let toby = Employee()
toby.name = "Toby"
toby.phoneNumber = "010-3392-8765"

var callTask = Task(title: "Call to Toby", time: 10*60, owner:me, participant:toby)
var reportTask = Task(title: "report to Boss", time: nil, owner:me, participant:nil)

var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "Call to Toby"

print("Today task = \(todayTask)")
