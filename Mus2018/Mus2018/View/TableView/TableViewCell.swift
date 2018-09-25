//
//  TableViewCell.swift
//  Mus2018
//
//  Created by Muslin on 25/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lb_title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    
    func setupCell(title:[Int], color:[UIColor], row:Int) {
        self.lb_title.text = "\(title[row])"
        var i = 0
        if row%2 == 0 {
            i = (row - 1) / 2
        }
        else {
            i = row / 2
        }
        self.lb_title.textColor = color[i]
    }
    
    func setupCellString(title: BookDetailResponse, row: Int) {
        self.lb_title.text = "\(title.ebook_codeDisplay) - \(row)"
    }
    
}
