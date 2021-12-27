//
//  TaskViewCell.swift
//  BeastList
//
//  Created by admin on 27/12/2021.
//

import UIKit

class TaskViewCell: UITableViewCell {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
