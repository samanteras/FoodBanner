//
//  FoodCell.swift
//  FoodBanner
//
//  Created by MAC13 on 13.10.2022.
//

import UIKit

class FoodCell: UITableViewCell {

    @IBOutlet weak var foodLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
           super.layoutSubviews()
           //set the values for top,left,bottom,right margins
       
//           let margins = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
//           contentView.frame = contentView.frame.inset(by: margins)
       }

}
