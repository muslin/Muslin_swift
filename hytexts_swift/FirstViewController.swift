//
//  FirstViewController.swift
//  hytexts_swift
//
//  Created by Muslin on 7/28/2560 BE.
//  Copyright © 2560 hytexts. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var test: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createUI(){
        test.text="tstststtfdgfhfh"
        test.textColor=UIColor.cyan;
    }
}

