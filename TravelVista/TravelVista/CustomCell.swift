//
//  CustomCell.swift
//  TravelVista
//
//  Created by Amandine Cousin on 18/12/2023.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var countryNameLabel: UILabel!
    
    func setUpCell(){
        self.countryImageView.layer.cornerRadius = self.countryImageView.frame.size.width / 2
    }
}
