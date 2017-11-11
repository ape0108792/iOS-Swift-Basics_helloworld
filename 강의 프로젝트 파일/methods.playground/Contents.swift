//: Playground - noun: a place where people can play

import UIKit

/*메소드란 인스턴스 안에 종속된 함수
 인스턴스에서 필요한 기능들 함수로 만들어 넣은 것
 클래스, 구조체, 이너머레이션 모두 인스턴스 메소드를 가질 수 있다
 self는 그 자신을 가리킨다
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
    
    func report() {
        if let myBoss = boss {
            print("\(name!) reported to \(myBoss).")
        } else {
            print("\(name!) don't have a boss.")
        }
    }
    
    func callTaskToBoss() -> Task? {
        if let myBoss = boss {
            let callTask = Task(type: .Call, owner:self)
            return callTask
        }
        return nil
    }
}
var todayTask:[Task] = []

let me:Employee = Employee(name: "Alex", phone:"010-3398-8792")
let toby = Employee(name: "Toby")
toby.phoneNumber = "010-3392-8765"
me.boss = toby

var reportTask = Task(type:.Report, owner:me)
todayTask += [reportTask]

if let callTask = me.callTaskToBoss() {
    todayTask += [callTask]
}

todayTask[1].time = 15*60

print("Today task = \(todayTask)")


/*Driving struct에 car가 운행을 마칠 때 마다 car에 로그를 남기는 기능을 추가하려고 합니다. Driving 인스턴스를 매개변수로 받아 drivingLog 배열에 추가하고, mileage에 운행거리를 더하는 addLog함수를 Car 클래스에 더해보세요. addLog 함수에서 Driving 인스턴스를 매개변수로 받은 후 인스턴스를 drivingLog에 추가하고 mileage에 운행거리를 더하면 됩니다 */

class Car {
    var drivingLog:[Driving] = []
    var mileage:Int = 0
    
    // 매개변수로 Driving 인스턴스를 받으세요
    func addLog(driving:Driving) {
        // 인자를 drivingLog 배열에 추가하세요
        drivingLog += [driving]
        //  mileage에 운행거리를 더하세요
        mileage += driving.distance
    }
}

struct Driving {
    let car:Car
    let distance:Int //운행 거리
    
    func arrived() {
        car.addLog(driving: self)
    }
}

let truck = Car()
let deliver = Driving(car: truck, distance:30)
deliver.arrived()

print(truck.drivingLog)
print(truck.mileage)
