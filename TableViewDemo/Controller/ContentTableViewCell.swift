//
//  ContentTableViewCell.swift
//  TableViewDemo
//
//  Created by Chaitrali chaudhari  on 02/08/21.
//

import UIKit

class ContentTableViewCell: UITableViewCell {

    @IBOutlet var contentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        contentLabel.text = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
