//
//  ArrayCollectionViewCell.swift
//  Test2018
//
//  Created by Muslin on 27/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit

class ArrayCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lb_title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(value: ArrayResponse, row: Int) {
        backgroundColor = .gray
        lb_title.text = "\(row) \(value.items[row].muslinName)"
        lb_title.setWordWrap()
    }

}
