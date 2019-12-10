//
//  InboxVC.swift
//  ACE
//
//  Created by apple on 22/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class InboxVC: UIViewController, UITableViewDelegate , UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("INBOX")
    }

    //MARK:- TableView Delegate & DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:InboxTblCell = tableView.dequeueReusableCell(withIdentifier: "InboxTblCell", for: indexPath) as! InboxTblCell
        roundedViewDesgin(view: cell.viewInbox, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)

        return cell
    }

    func roundedViewDesgin(view: UIView , viewBG : UIColor , viewBorderColour : UIColor )
    {
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 20;
        view.layer.borderColor =  viewBorderColour.cgColor
        view.layer.backgroundColor = viewBG.cgColor
        view.layer.masksToBounds = true;
    }

    func hexStringToUIColor (hex:String) -> UIColor
    {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#"))
        {
            cString.remove(at: cString.startIndex)
        }
        if ((cString.count) != 6)
        {
            return UIColor.gray
        }
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    
}

class InboxTblCell:UITableViewCell
{
    @IBOutlet weak var viewInbox: UIView!

}
