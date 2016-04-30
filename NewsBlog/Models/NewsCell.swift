//
//  NewsCell.swift
//  NewsBlog
//
//  Created by Jaime Molina Orbe on 4/29/16.
//  Copyright © 2016 jasmo2. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var byLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
