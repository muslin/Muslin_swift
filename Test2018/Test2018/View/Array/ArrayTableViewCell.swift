//
//  ArrayTableViewCell.swift
//  Test2018
//
//  Created by Muslin on 27/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit

class ArrayTableViewCell: UITableViewCell {

    @IBOutlet weak var lb_title: UILabel!
    @IBOutlet weak var icon: UIImage!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(row: Int) {
        lb_title.text = "\(row) …it means that your call to dequeueReusableCell(withIdentifier:) is failing, which is usually caused by having no prototype cells with the identifier you requested.\n First: check that you have a prototype cell registered. By default you should have one in the storyboard, but if you created your own table view then you might have moved things around. You might also have registered one in code. \nSecond: check that your spelling of the identified is correct. It's Cell by default, in the code and in the storyboard, and these two things need to match in order for everything to work.\nYou can verify the error by placing a breakpoint in your cellForRowAtIndexPath method. For example, if you have code like this:"
        lb_title.setWordWrap()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
