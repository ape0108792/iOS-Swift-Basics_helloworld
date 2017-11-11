//
//  ViewController.swift
//  interaction
//
//  Created by 황도증 on 2017. 10. 21..
//  Copyright © 2017년 황도증. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myButton(_ sender: Any) {
        myText.text = "Hello, iPhone"
    }
    
}

