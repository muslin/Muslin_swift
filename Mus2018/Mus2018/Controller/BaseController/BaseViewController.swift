//
//  BaseViewController.swift
//  Mus2018
//
//  Created by Muslin on 25/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func setNav(text:String) {
        self.navigationItem.title = text
        //self.title = text
        self.navigationController?.navigationBar.backgroundColor = UIColor.black
    }

}
