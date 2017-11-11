//
//  TintColorViewController.swift
//  meetingRooms
//
//  Created by 황도증 on 2017. 11. 9..
//  Copyright © 2017년 황도증. All rights reserved.
//

import UIKit

enum TintColor:Int {
    case Blue = 0, Red, Green, Purple
    
    var color:UIColor { get {
        switch self {
        case .Blue:
            return UIColor.blue
        case .Red:
            return UIColor.red
        case .Green:
            return UIColor.green
        case .Purple:
            return UIColor.purple
        }
        }
        
    }
}

let TintColorKey = "TintColor"

func applyTintColor(color:UIColor) {
    guard let window = UIApplication.shared.keyWindow else {
        return
    }
    window.tintColor = color
}

class TintColorViewController: UIViewController {

    @IBOutlet weak var tintColorSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let userDefaultColor = UserDefaults.standard.integer(forKey: TintColorKey)
        self.tintColorSeg.selectedSegmentIndex = userDefaultColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tintColorChanged(_ sender: Any) {
        let selectedIndex = self.tintColorSeg.selectedSegmentIndex
        UserDefaults.standard.set(selectedIndex, forKey: TintColorKey)
        
        guard let changedColor = TintColor(rawValue: selectedIndex)?.color else {
            return
        }
        applyTintColor(color: changedColor)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
