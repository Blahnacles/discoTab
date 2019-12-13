//
//  StrategyTableViewCell.swift
//  noroG4V
//
//  Created by Simon Laffan on 18/10/19.
//  Copyright © 2019 Simon Laffan. All rights reserved.
//

import UIKit

class StrategyTableViewCell: UITableViewCell {
    //Mark: Properties
    @IBOutlet weak var strategyTitle: UILabel!
    @IBOutlet weak var strategyDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
