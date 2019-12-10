//
//  RegisterVC.swift
//  AC
//
//  Created by apple on 28/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit


@available(iOS 13, *)

class RegisterVC: UIViewController
{
    @IBOutlet weak var viewFirstName: UIView!
    @IBOutlet weak var viewLastName: UIView!
    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var viewPassword: UIView!
    @IBOutlet weak var viewConfirmPassword: UIView!
    @IBOutlet weak var viewSignUp: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        roundedViewDesgin(view: viewFirstName, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewLastName, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewEmail, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewPassword, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewConfirmPassword, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewSignUp, viewBG: hexStringToUIColor(hex:"#ff5349"), viewBorderColour: UIColor.lightGray)
    }
    
        @IBAction func btnSignUpVC(_ sender: UIButton)
        {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CompleteProfileVC") as? CompleteProfileVC
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
