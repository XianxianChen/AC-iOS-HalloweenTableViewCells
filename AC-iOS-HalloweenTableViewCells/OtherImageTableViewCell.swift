//
//  OtherImageTableViewCell.swift
//  AC-iOS-HalloweenTableViewCells
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class OtherImageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var halloweenImageView: UIImageView!
    
    @IBOutlet weak var halloweenLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
