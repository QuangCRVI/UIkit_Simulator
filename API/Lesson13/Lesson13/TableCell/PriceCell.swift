//
//  PriceCell.swift
//  Lesson13
//
//  Created by Quang Nguyen on 02/02/2024.
//

import UIKit

class PriceCell: UITableViewCell {

    
    @IBOutlet weak var lbGRate_float: UILabel!
    @IBOutlet weak var lbGDescription: UILabel!
    @IBOutlet weak var lbGRate: UILabel!
    @IBOutlet weak var lbGSymbol: UILabel!
    @IBOutlet weak var lbGCode: UILabel!
    @IBOutlet weak var lbERate_float: UILabel!
    @IBOutlet weak var lbEDescription: UILabel!
    @IBOutlet weak var lbERate: UILabel!
    @IBOutlet weak var lbESymbol: UILabel!
    @IBOutlet weak var lbECode: UILabel!
    @IBOutlet weak var lbUrate_float: UILabel!
    @IBOutlet weak var lbUDescription: UILabel!
    @IBOutlet weak var lbURate: UILabel!
    @IBOutlet weak var lbUSymbol: UILabel!
    @IBOutlet weak var lbUCode: UILabel!
    @IBOutlet weak var lbChartName: UILabel!
    @IBOutlet weak var lbDisclaimer: UILabel!
    @IBOutlet weak var lbUpDateDuk: UILabel!
    @IBOutlet weak var lbUpdatedISO: UILabel!
    @IBOutlet weak var lbUpdated: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

     
