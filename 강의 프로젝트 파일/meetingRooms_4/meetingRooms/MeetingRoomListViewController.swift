//
//  MeetingRoomListViewController.swift
//  meetingRooms
//
//  Created by 황도증 on 2017. 10. 30..
//  Copyright © 2017년 황도증. All rights reserved.
//

import UIKit

class MeetingRoomListViewController: UITableViewController {
    
    var meetingRooms:[String:[String:Int]] = ["Meeting":["Banksy":4, "Rivera":8, "Kahlo":10], "Seminar":["Cezanne":20, "Matisse":30, "Renoir":40]]
    
    func meetingRoomsAtIndex (index:Int) -> (key:String, value:[String:Int]) {
        let orderMeetingRoooms = meetingRooms.sorted(by: {$0.1.first!.1 < $1.1.first!.1})
        return orderMeetingRoooms[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meetingRooms.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //let categoryValues = Array(meetingRooms.values)[section]
        //let orderMeetingRoooms = meetingRooms.sorted(by: {$0.1.first!.1 < $1.1.first!.1})
        let rowCount = meetingRoomsAtIndex(index: section).value.count
        return rowCount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        //let orderMeetingRoooms = meetingRooms.sorted(by: {$0.1.first!.1 < $1.1.first!.1})
        // Configure the cell...
        //let categoryValue = Array(meetingRooms.values)[indexPath.section]
        let categoryValue = meetingRoomsAtIndex(index: indexPath.section).value
        let orderCategoryValue = categoryValue.sorted(by: {$0.1 < $1.1})
        let roomName = orderCategoryValue[indexPath.row].key
        let capacity = orderCategoryValue[indexPath.row].value
        
        cell.textLabel!.text = roomName
        cell.detailTextLabel!.text = "\(capacity)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        //let orderMeetingRoooms = meetingRooms.sorted(by: {$0.1.first!.1 < $1.1.first!.1})
        
        return meetingRoomsAtIndex(index: section).key
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        //let orderMeetingRoooms = meetingRooms.sorted(by: {$0.1.first!.1 < $1.1.first!.1})
        let rowCount = meetingRoomsAtIndex(index: section).value.count
        return "\(rowCount) rooms"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
