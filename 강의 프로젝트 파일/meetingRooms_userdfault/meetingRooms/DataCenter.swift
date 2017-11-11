//
//  DataCenter.swift
//  meetingRooms
//
//  Created by 황도증 on 2017. 11. 9..
//  Copyright © 2017년 황도증. All rights reserved.
//

import Foundation

let dataCenter:DataCenter = DataCenter()

class DataCenter {
    var branches:[Branch] = []
    
    init (){
        let banksyRoom = MeetingRoom(name:"Banksy", capacity: 4)
        let kahloRoom = MeetingRoom(name:"Kahlo", capacity: 8)
        let riveraRoom = MeetingRoom(name:"Rivera", capacity: 8)
        let picasoRoom = MeetingRoom(name:"Picaso", capacity: 10)
        
        let vehicleService = Service(name: "차량예약")
        let meetingRoomService = Service(name: "회의실예약")
        let visitorService = Service(name: "방문자예약")
        let deskService = Service(name: "데스크예약")
        meetingRoomService.items = [banksyRoom, kahloRoom, riveraRoom, picasoRoom]
        
        let pangyoBranch = Branch(name: "판교점")
        let samsungBranch = Branch(name: "삼성점")
        let yeoksamBranch = Branch(name: "역삼점")
        let sinrimBranch = Branch(name: "신림점")
        let songdooBranch = Branch(name: "송도점")
        let anamBranch = Branch(name: "안암점")
        pangyoBranch.services = [vehicleService, meetingRoomService, visitorService, deskService]
        
        branches += [pangyoBranch, samsungBranch, yeoksamBranch, sinrimBranch, songdooBranch, anamBranch]
    }
}

class Branch {
    let name:String
    var services:[Service]?
    
    init(name:String) {
        self.name = name
    }
}

class Service {
    let name:String
    var items:[MeetingRoom]?
    
    init(name:String) {
        self.name = name
    }
}

class MeetingRoom {
    let name:String
    let capacity:Int
    var reservations:[Reservation]?
    
    init(name:String, capacity:Int) {
        self.name = name
        self.capacity = capacity
    }
}

class Reservation {
    var hostName:String
    var date:NSDate
    var attendees:Int
    var equipments:[String]
    var catering:Bool
    
    init() {
        self.hostName = "host of meeting"
        self.date = NSDate()
        self.attendees = 1
        self.equipments = []
        self.catering = false
    }
    
}
