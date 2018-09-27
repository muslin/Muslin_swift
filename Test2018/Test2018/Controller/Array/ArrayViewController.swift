//
//  ArrayViewController.swift
//  Test2018
//
//  Created by Muslin on 27/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class ArrayViewController: BaseViewController {

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var CollectionView: UICollectionView!
    let arrayApi = ArrayApi()
    var modelArray: ArrayResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setTableView()
        //arrayApi.getArray()
        arrayApi.getArray { (res) in
            self.modelArray = res
            self.setCollectionView()
        }
        //getArray()
    }
    
    func setTableView() {
        TableView.dataSource = self
        TableView.delegate = self
        TableView.tableFooterView = UIView.init(frame: .zero)
        TableView.rowHeight = UITableView.automaticDimension
        TableView.estimatedRowHeight = 44
        
        //TableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        TableView.register(UINib(nibName: "ArrayTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        TableView.reloadData()
    }
    func setCollectionView() {
        let width = (view.frame.width-20)/3
        let layout = CollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
        
        CollectionView.dataSource = self
        CollectionView.delegate = self
        
        //CollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        CollectionView.register(UINib(nibName: "ArrayCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        CollectionView.reloadData()
    }
}

extension ArrayViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (modelArray?.items.count)!
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ArrayCollectionViewCell
        cell.setupCell(value: modelArray!, row: indexPath.row)
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width = (self.view.frame.size.width - 12 * 3) / 3 //some width
//        let height = width * 1.5 //ratio
//        return CGSize(width: width, height: height)
//    }
}


extension ArrayViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ArrayTableViewCell
        cell.setupCell(row: indexPath.row)
        return cell
    }
}
