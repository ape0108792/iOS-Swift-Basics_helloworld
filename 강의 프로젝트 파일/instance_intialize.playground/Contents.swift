//: Playground - noun: a place where people can play

import UIKit

/*초기화 작업은 인스턴스가 가지고 있는 모든 스토어드 프라퍼티(Stored Property)들의 최초 값을 설정하는 것
 
 스토어드 프라퍼티
 저장소를 가지고 있는 프라퍼티

 컴퓨티드 프라퍼티
 저장소 없이 계산에 의해 값을 리턴하는 프라퍼티

 구조체의 초기화
 여러 개의 init 메소드 허용
 상속을 허락하지 않으므로 Class에 비해 상대적으로 단순.

 클래스의 초기화
 하나의 지정초기화 메소드
 여러 개의 편의 초기화 메소드 허용
 */
struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String {
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
    
    init(type:TaskType, owner:Employee) {
        self.type = type
        self.title = type.typeTitle
        self.owner = owner
        self.time = nil
        self.participant = nil
    }
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init (name:String) {
    self.name = name
    }
    
    init(name:String, phone:String) {
        self.name = name
        self.phoneNumber = phone
    }
}

let me:Employee = Employee(name: "Alex", phone:"010-3398-8792")
//me.name = "Alex"
//me.phoneNumber = "010-3398-9879"

let toby = Employee(name: "Toby")
//toby.name = "Toby"
toby.phoneNumber = "010-3392-8765"

//var callTask = Task(title: "Call to Toby", time: 10*60, owner:me, participant:toby, type:.Call)
var callTask = Task(type:.Call, owner:me)
callTask.time = 10*60
var reportTask = Task(type:.Report, owner:me)
//var reportTask = Task(title: "report to Boss", time: nil, owner:me, participant:nil, type:Task.TaskType.Report)

var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "Call to Toby"

print("Today task = \(todayTask)")
