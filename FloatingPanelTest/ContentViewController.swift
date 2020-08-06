//
//  ContentViewController.swift
//  FloatingPanelTest
//
//  Created by Jeonggyu Park on 06/08/2020.
//  Copyright © 2020 Jeonggyu Park. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var myTableView: UITableView!
    
    let data = [
    "New York",
    "Florida",
    "London",
    "LA",
    "Seoul",
    "Tokyo",
    "Beijing",
    "Sydney",
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTableView.delegate = self
        myTableView.dataSource = self
   
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    

  

}
