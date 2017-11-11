//: Playground - noun: a place where people can play

import UIKit

struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    /*연관성 있는 값들의 그룹을 만들어 Type-Safe 하게 사용하는 것이다.
    
    여러 다른 언어에서 일련의 값에 일대일 대응되는 Enum을 정의해서 사용
    
    Task의 상태 값을 나타내기 위해 0, 1, 2등의 정수값을 사용
    보다 직관적으로 0은 READY, 1은 COUNTING, 2는 PAUSED, 3은 DONE과 같이 Enum으로 정의해서 사용하는 방식
    Swift에서 Enumeration은 더욱 강력한 기능을 가진다
    
    1st class type
    매개변수나 리턴타입으로 사용
    메소드를 가진다거나 프로토콜을 준수
     */
    var type:TaskType
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var titleString:String {
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
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-3398-9879"

let toby = Employee()
toby.name = "Toby"
toby.phoneNumber = "010-3392-8765"

//열거형의 사용
var callTask = Task(title: "Call to Toby", time: 10*60, owner:me, participant:toby, type:.Call)
var reportTask = Task(title: "report to Boss", time: nil, owner:me, participant:nil, type:Task.TaskType.Report)

var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "Call to Toby"

print("Today task = \(todayTask)")


//자동차는 저마다 사용하는 연료의 종류가 다릅니다. 자동차를 크게 휘발유를 쓰는 차, 경유를 쓰는 차, 가스를 쓰는 차로 이렇게 3가지로 분류할 수 있습니다. 연료를 다음과 같이 Fuel이라는 enum으로 추상화 했을 때, 경유를 쓰는 자동차 mini01, 휘발유를 쓰는 자동차 mini02를 enum으로 표현해 보세요
enum Fuel {
    case Gasoline // 휘발유
    case Diesel // 경유
    case LPG // 가스
}

// 빈 칸을 enum을 써서 채워보세요
let mini01Fuel = Fuel.Diesel
let mini02Fuel = Fuel.Gasoline

print("mini01은 연료로 \(mini01Fuel)을 쓰고, mini02는 연료로 \(mini02Fuel)을 씁니다")
