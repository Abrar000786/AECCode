//
//  HomeVC.swift
//  AC
//
//  Created by apple on 28/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)

class HomeVC: UIViewController
{
//    @IBOutlet weak var viewTxtView: UIView!
//    @IBOutlet weak var txtTextView: UITextView!
//    @IBOutlet weak var btnCopyText: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("HOME new")
        
//            roundedViewDesgin(view: viewTxtView, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
    }
    
    @objc func btnCopyCodeClickMe(_ sender: UIButton)
    {
        UIPasteboard.general.string = ""
    //        TAUtility.showToast(message:"Code Successfully Copied!")
    }
        

    func roundedViewDesgin(view: UIView , viewBG : UIColor , viewBorderColour : UIColor )
    {
    //        view.layer.borderWidth = 1
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
