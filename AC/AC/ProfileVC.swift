//
//  ProfileVC.swift
//  ACE
//
//  Created by apple on 22/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class ProfileVC: UIViewController
{
    @IBOutlet weak var viewProfileTop: UIView!
    @IBOutlet weak var viewEditProfile_1: UIView!
    @IBOutlet weak var viewPauseAvailability_2: UIView!
    @IBOutlet weak var viewNotificatio_3: UIView!
    @IBOutlet weak var viewPrivacy_4: UIView!
    @IBOutlet weak var viewContact_5: UIView!
    @IBOutlet weak var viewLogout_6: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("PROFILE")
        
        roundedViewDesgin(view: viewProfileTop, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewEditProfile_1, viewBG:  hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewPauseAvailability_2, viewBG:  hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewNotificatio_3, viewBG:  hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewPrivacy_4, viewBG:  hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewContact_5, viewBG:  hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewLogout_6, viewBG:  hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)

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

