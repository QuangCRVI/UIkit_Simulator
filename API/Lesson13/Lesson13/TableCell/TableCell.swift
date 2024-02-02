//
//  TableCell.swift
//  Lesson13
//
//  Created by Quang Nguyen on 02/02/2024.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var lbAPI: UILabel!
    @IBOutlet weak var lbAuth: UILabel!
    @IBOutlet weak var lbCate: UILabel!
    @IBOutlet weak var lbCors: UILabel!
    @IBOutlet weak var lbDes: UILabel!
    @IBOutlet weak var lbHTTPs: UILabel!
    @IBOutlet weak var lbLink: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
