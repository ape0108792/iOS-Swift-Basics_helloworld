//
//  KBOTableViewController.swift
//  KBOHallOfFame
//
//  Created by LingoStar on 2017. 10. 22..
//  Copyright © 2017년 LingoStar. All rights reserved.
//

import UIKit

struct Hitter {
    let name:String
    let team:Team
    let average:Double
    let year:Int
    var profileImageName:String?
    
    var profileImage:UIImage? { get{
        if let _profileImage = self.profileImageName {
            return UIImage(named:_profileImage)!
        } else {
            return nil
        }
        
        }}
}

enum Team {
    case Haetae
    case MBC
    case Samsung
    case Nexen
    case NC
    case LG
    case Lotte
    
    var emblem:UIImage? { get{ //Enum은 Stored Property를 가질 수 없지만 Computed Property는 가질 수 있다.
        switch self {
        case .Haetae:
            return UIImage(named:"haetae_tigers")!
        default:
            return nil
        }
        }}
}

class KBOTableViewController: UITableViewController {

    @IBOutlet weak var averageField: UILabel!
    
    func dummyData() -> [Hitter] {
        let baek_1982 = Hitter(name: "백인천", team:.MBC, average: 0.412, year: 1982, profileImageName:nil)
        let lee_1994 = Hitter(name: "이종범", team:.Haetae, average: 0.393, year: 1994, profileImageName:"leejongbum")
        let jang_1987 = Hitter(name: "장효조", team:.Samsung, average: 0.387, year: 1987, profileImageName:nil)
        let tames_2015 = Hitter(name: "테임즈", team:.NC, average: 0.381, year: 2015, profileImageName:nil)
        let jang_1985 = Hitter(name: "장효조", team:.Samsung, average: 0.373, year: 1985, profileImageName:nil)
        let ma_1999 = Hitter(name: "마해영", team:.Lotte, average: 0.372, year: 1999, profileImageName:nil)
        let park_2009 = Hitter(name: "박용택", team:.LG, average: 0.372, year: 2009, profileImageName:nil)
        let hong_2009 = Hitter(name: "홍성흔", team:.Lotte, average: 0.371, year: 2009, profileImageName:nil)
        let seo_2014 = Hitter(name: "서건창", team:.Nexen, average: 0.370, year: 2014, profileImageName:nil)
        let jang_1983 = Hitter(name: "장효조", team:.Samsung, average: 0.369, year: 1983, profileImageName:nil)
        
        return [baek_1982, lee_1994, jang_1987, tames_2015, jang_1985, ma_1999, park_2009, hong_2009, seo_2014, jang_1983]
    }
    
    var kboHallOfFame:[Hitter] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        kboHallOfFame = dummyData().sorted(by: {$0.year > $1.year})
        
        let average = kboHallOfFame.reduce(0, {$0 + $1.average}) / Double(kboHallOfFame.count)
        averageField.text = "타율평균 : " + String(average)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //self.tableView.register(HitterTableViewCell.self, forCellReuseIdentifier: "KBOCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return kboHallOfFame.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KBOCell", for: indexPath) as! HitterTableViewCell
        let currentHitter = kboHallOfFame[indexPath.row]
        // Configure the cell...
        //cell.textLabel?.text = hitter.name + " " + String(describing: hitter.team)
        
        //cell.detailTextLabel?.text = String(hitter.average) + " ( " + String(hitter.year) + " )"
        cell.hitter = currentHitter
        
        return cell
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
