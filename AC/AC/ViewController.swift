//
//  ViewController.swift
//  ACE
//
//  Created by apple on 20/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import SwiftyGif

@available(iOS 13, *)

class ViewController: UIViewController
{
    let logoAnimationView = LogoAnimationView()
    
    @IBOutlet weak var viewLogin: UIView!
    @IBOutlet weak var viewInviteCode: UIView!


    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.addSubview(logoAnimationView)
        logoAnimationView.pinEdgesToSuperView()
        logoAnimationView.logoGifImageView.delegate = self as? SwiftyGifDelegate
        
        roundedViewDesgin(view: viewLogin, viewBG: hexStringToUIColor(hex:"#000000"), viewBorderColour: UIColor.lightGray)
        roundedViewDesgin(view: viewInviteCode, viewBG: hexStringToUIColor(hex:"#ff5349"), viewBorderColour: UIColor.lightGray)

    }
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        logoAnimationView.logoGifImageView.startAnimatingGif()
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

    @IBAction func btnGoToLoginVC(_ sender: UIButton)
    {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    @IBAction func btnGoToInvitationCodeVC(_ sender: UIButton)
    {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "InvitationCodeVC") as? InvitationCodeVC
        self.navigationController?.pushViewController(vc!, animated: false)

    }


    @IBAction func btnGoToDashBoardVC(_ sender: UIButton)
    {
        let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TTabBarViewController") as! TTabBarViewController
        self.navigationController?.pushViewController(loginVC, animated: false)
    }
}


@available(iOS 13, *)
extension ViewController: SwiftyGifDelegate
{
    func gifDidStop(sender: UIImageView)
    {
        logoAnimationView.isHidden = true
    }
}


/*

let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
self.navigationController?.pushViewController(vc!, animated: false)

 
 let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DashBoardVC") as? DashBoardVC
 self.navigationController?.pushViewController(vc!, animated: false)
 

 let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
 let nextViewController = storyBoard.instantiateViewController(withIdentifier: "DashboardVC") as! DashboardVC
 let navigationController = UINavigationController(rootViewController: nextViewController)
  navigationController.navigationBar.isHidden = true
 let appdelegate = UIApplication.shared.delegate as! AppDelegate
 appdelegate.window!.rootViewController = navigationController

*/
