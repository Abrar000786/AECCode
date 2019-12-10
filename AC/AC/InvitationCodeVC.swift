//
//  InvitationCodeVC.swift
//  AC
//
//  Created by apple on 27/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)

class InvitationCodeVC: UIViewController
{
    @IBOutlet weak var viewTxtInviteCode: UIView!
    @IBOutlet weak var viewSignUp: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        roundedViewDesgin(view: viewTxtInviteCode, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewSignUp, viewBG: hexStringToUIColor(hex:"#000000"), viewBorderColour: UIColor.lightGray)

    }
    
    @IBAction func btnGoToSignUpVC(_ sender: UIButton)
    {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        self.navigationController?.pushViewController(vc!, animated: false)
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
