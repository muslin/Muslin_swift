//
//  BaseViewController.swift
//  Test2018
//
//  Created by Muslin on 26/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    let leftBarButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(image: UIImage.init(named: "left"), style: .plain, target: self, action: nil)
        //let barButtonItem = UIBarButtonItem(title: "Left Item", style: .plain, target: self, action: nil)
        barButtonItem.tintColor = UIColor.green
        return barButtonItem
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setNav()
    }
    
    func setNav(name: String) {
        title = name
        navigationItem.title = title
        //navigationController?.navigationBar.topItem?.title = title
        //navigationController?.navigationBar.prefersLargeTitles = true

        
        navigationController?.navigationBar.backgroundColor = .black
        //navigationController?.navigationBar.barTintColor = .black
        navigationItem.titleView?.backgroundColor = .red
        //navigationItem.titleView?.tintColor = .white

//        let attrs = [
//            NSAttributedString.Key.foregroundColor: UIColor.red,
//            NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 24)!
//        ]
//
//        UINavigationBar.appearance().titleTextAttributes = attrs
        
        navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
