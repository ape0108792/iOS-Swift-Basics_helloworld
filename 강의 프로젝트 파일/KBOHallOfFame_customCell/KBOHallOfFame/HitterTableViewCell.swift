//
//  HitterTableViewCell.swift
//  KBOHallOfFame
//
//  Created by LingoStar on 2017. 10. 31..
//  Copyright © 2017년 LingoStar. All rights reserved.
//

import UIKit

class HitterTableViewCell: UITableViewCell {

    var hitter:Hitter? { didSet {
        self.profileImageView?.image = hitter!.profileImage
        self.nameLabel?.text = hitter!.name
        self.emblemImageView?.image = hitter!.team.emblem
        self.averageLabel.text = String(hitter!.average)
        }}
    
    
    @IBOutlet weak var profileImageView: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var averageLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel?
    @IBOutlet weak var emblemImageView: UIImageView?
    @IBOutlet weak var teamNameLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
