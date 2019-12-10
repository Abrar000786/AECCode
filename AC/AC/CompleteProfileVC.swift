//
//  CompleteProfileVC.swift
//  AC
//
//  Created by apple on 28/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@available(iOS 13, *)

class CompleteProfileVC: UIViewController
{
    @IBOutlet weak var viewFullName: UIView!
    @IBOutlet weak var viewUserName: UIView!
    @IBOutlet weak var viewFree: UIView!
    @IBOutlet weak var viewBio: UIView!
    @IBOutlet weak var viewSave: UIView!

    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    // roundedViewDesgin(view: viewFullName, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewUserName, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewFree, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewBio, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewSave, viewBG: hexStringToUIColor(hex:"#000000"), viewBorderColour: UIColor.lightGray)

        
        viewFullName.layer.shadowOpacity = 0.7
        viewFullName.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        viewFullName.layer.shadowColor = UIColor.black.cgColor
        viewFullName.layer.shadowOpacity = 0.7
        viewFullName.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewFullName.layer.shadowRadius = 5.0
        viewFullName.layer.shadowColor = UIColor.black.cgColor
        viewFullName.layer.backgroundColor = UIColor.white.cgColor
        viewFullName.layer.cornerRadius = 10;
        
    }
    @IBAction func btnGoToDashBoardVC(_ sender: UIButton)
    {
        let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TTabBarViewController") as! TTabBarViewController
        self.navigationController?.pushViewController(loginVC, animated: false)
    }

    
    func roundedViewDesgin(view: UIView , viewBG : UIColor , viewBorderColour : UIColor )
    {
        view.layer.cornerRadius = 10;
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
