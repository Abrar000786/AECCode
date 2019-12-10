//
//  DashboardVC.swift
//  ACE
//
//  Created by apple on 21/11/19.
//  Copyright © 2019 apple. All rights reserved.


import UIKit
import Koloda


@available(iOS 13.0, *)


private var numberOfCards: Int = 5

class DashboardVC: UIViewController
{
    @IBOutlet weak var viewTxtView: UIView!
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var btnCopyCode: UIButton!
    
    @IBOutlet weak var viewHoldsCards: UIView!

    @IBOutlet weak var kolodaView: KolodaView!
    
    public var dataSource: [UIImage] = {
        var array: [UIImage] = []
        if #available(iOS 13.0, *)
        {
            for index in 0..<numberOfCards
            {
                array.append(UIImage(named: "Card_like_\(index + 1)")!)
            }
        }
        else
        {
            for i in 1...4
            {
              array.append(UIImage(named: "Card_like_\(i + 1)")!)
            }
        }
        return array
    }()
    


    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("Dashboard")
        btnCopyCode.addTarget(self, action:#selector(self.btnCopyCodeClickMe), for: .touchUpInside)
        roundedViewDesgin(view: viewTxtView, viewBG: hexStringToUIColor(hex:"#f2f2f7"), viewBorderColour: UIColor.lightGray)
        
        // for cards //
        kolodaView.dataSource = self
        kolodaView.delegate = self
        self.modalTransitionStyle = UIModalTransitionStyle.coverVertical
    }

        
        // MARK: IBActions

        @IBAction func leftButtonTapped() {
            kolodaView?.swipe(.left)
        }
        
        @IBAction func rightButtonTapped() {
            kolodaView?.swipe(.right)
        }
        
        @IBAction func undoButtonTapped() {
            kolodaView?.revertAction()
        }

    
    
    
    @objc func btnCopyCodeClickMe()
    {
        UIPasteboard.general.string = txtView.text
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

// Cards Deleagate Extention //
// MARK: KolodaViewDelegate //

extension DashboardVC: KolodaViewDelegate
{
    func kolodaDidRunOutOfCards(_ koloda: KolodaView)
    {
        self.viewHoldsCards.isHidden = true
    }
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int)
    {
//        UIApplication.shared.openURL(URL(string: "https://yalantis.com/")!)
    }
}

// MARK: KolodaViewDataSource

extension DashboardVC: KolodaViewDataSource
{
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int
    {
        return dataSource.count
    }
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed
    {
        return .slow
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView
    {
        return UIImageView(image: dataSource[Int(index)])
    }
    
//    func koloda(_ koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
//     return Bundle.main.loadNibNamed("OverlayView", owner: self, options: nil)?[0] as? OverlayView
//  }
}
