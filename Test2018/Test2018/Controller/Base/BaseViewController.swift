//
//  BaseViewController.swift
//  Test2018
//
//  Created by Muslin on 26/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var fg: UIColor = .gray
    var bg: UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = bg
    }
    
    func setNav(name: String) {
        title = name
        navigationItem.title = title
        //navigationController?.navigationBar.prefersLargeTitles = true

        navigationController?.navigationBar.isTranslucent = true
        let img = UIImage.imageByColor(color: bg)
        navigationController?.navigationBar.setBackgroundImage(img, for: UIBarMetrics.default)
        
        guard let navigationFont = UIFont(name: "Kanit-Regular", size: 20)  else {
            return
        }
        guard let navigationLargeFont = UIFont(name: "Kanit-Regular", size: 34)  else { //34 is Large Title size by default
            return
        }
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: fg, NSAttributedString.Key.font: navigationFont]
        if #available(iOS 11, *){
            navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: fg, NSAttributedString.Key.font: navigationLargeFont]
        }
        
        
        let leftBarButtonItem = UIBarButtonItem(image: UIImage.init(named: "left"), style: .plain, target: self, action: #selector(back))
        let rightBarButtonItem = UIBarButtonItem(image: UIImage.init(named: "left"), style: .plain, target: self, action: #selector(dis))
        
        leftBarButtonItem.tintColor = fg
        rightBarButtonItem.tintColor = fg
        
        navigationItem.leftBarButtonItems = [leftBarButtonItem]
        navigationItem.rightBarButtonItems = [rightBarButtonItem]        
        
    }
    
    @objc func back() {
        /*guard (navigationController != nil) else {            
            dismiss(animated: true, completion: nil)
            return
        }*/
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    @objc func dis() {
        dismiss(animated: true, completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
