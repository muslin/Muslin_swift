//
//  MainViewController.swift
//  Test2018
//
//  Created by Muslin on 26/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class MainViewController: BaseViewController {
    
    @IBOutlet weak var TableView: UITableView!
    var modelTest: ShowDateResponse?
    let menu = ["26/09 Test","27/09 Array"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //title = "Nav"
        setNav(name: "Main")
        setTableView()
        
        //modelTest?.test[0].id
        Alamofire.request("https://5bab4e29ecc1a70014306ab3.mockapi.io/login", parameters: nil, encoding: JSONEncoding.default).responseJSON { (response: DataResponse<Any>) in
            switch response.result {
            case .success(_):
                if let value = response.value! as? [String : Any] {
                    self.modelTest = Mapper<ShowDateResponse>().map(JSON: value)
                    
                }
                break
            case .failure(let errorData):
                print(errorData)
                break
            }
        }
    }
    
    func setTableView() {
        TableView.dataSource = self
        TableView.delegate = self
        //TableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        TableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")

    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MainTableViewCell
        cell.setTitle(text: menu[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            print()
            //let newViewController = UIStoryboard(name: "Test", bundle: nil).instantiateViewController(withIdentifier: "TestViewControllerID") as! TestViewController
            //self.navigationController?.pushViewController(newViewController, animated: true)
        case 1:
            let newViewController = UIStoryboard(name: "Array", bundle: nil).instantiateViewController(withIdentifier: "ArrayViewControllerID") as! ArrayViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
            
        default:
            print()
        }
    }
}
