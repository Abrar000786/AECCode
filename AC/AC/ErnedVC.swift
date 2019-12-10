//
//  ErnedVC.swift
//  ACE
//
//  Created by apple on 22/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class ErnedVC: UIViewController , UITableViewDelegate , UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("ERNED")
    }
    
    //MARK:- TableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:ErnedTblCell = tableView.dequeueReusableCell(withIdentifier: "ErnedTblCell", for: indexPath) as! ErnedTblCell
        
        return cell
    }
}

class ErnedTblCell:UITableViewCell
{
    
}
