//
//  TableViewController.swift
//  Mus2018
//
//  Created by Muslin on 25/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import ObjectMapper

class TableViewController: BaseViewController {

    @IBOutlet weak var TableView: UITableView!
    
    var model: BookDetailResponse?
    var color = [UIColor.black, UIColor.green, UIColor.red, UIColor.brown, UIColor.blue]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setNav(text: "TableView")
        self.setupTableView()
        
        //let requestParam = BookDetailRequest(bookcode: "B016656")
        Alamofire.request(ApiName.bookDetail, parameters: nil, encoding: JSONEncoding.default).responseJSON { (response: DataResponse<Any>) in
            switch response.result {
            case .success(_):
                if let value = response.value! as? [String : Any] {
                    self.model = Mapper<BookDetailResponse>().map(JSON: value)
                    self.setupTableView()
                }
                break
            case .failure(let errorData):
                print(errorData)
                break
            }
        }
    }
    

    func setupTableView() {
        TableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        TableView.delegate = self
        TableView.dataSource = self
        TableView.tableFooterView = UIView()
        
        TableView.reloadData()
    }

}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard model != nil else {
            return 0
        }
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        //cell.setupCell(title: model, color: color, row: indexPath.row)
        cell.setupCellString(title: model!, row: indexPath.row)
        return cell
    }
    
}
