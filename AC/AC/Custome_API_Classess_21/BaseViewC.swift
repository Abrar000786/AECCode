//
//  BaseViewC.swift
//  Swift3Demo
//
//  Created by Naveen Sharma on 23/04/17.
//  Copyright © 2017 Naveen Sharma. All rights reserved.
//

import UIKit

class BaseViewC: UIViewController
{
    // MARK: - View Life Cycle Functions ::
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        //--- Remove Default Back Button ---//
//        self.navigationItem.backBarButtonItem?.tintColor = UIColor.white
//        self.navigationItem.hidesBackButton = true
//        self.navigationItem.leftBarButtonItem = nil
//        //--- Hide Navigation Bar ---//
//        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    /*
     
     // MARK: - View Life Cycle Functions ::
     
     
     // MARK: - Notifications Functions ::
     
     
     // MARK: - Internal Functions ::
     
     
     // MARK: - Private Functions ::
     
     
     // MARK: - Button Actions ::
     
     
     // MARK: - Selectors Actions ::
     
     
     // MARK: - UICollectionViewDelegate ::
     
     
     // MARK: - UICollectionViewDataSource ::
     
     
     // MARK: - UITableViewDelegate ::
   
     
     // MARK: - UITableViewDataSource ::
     
     
     // MARK: - UIScrollViewDelegate ::
     
     
     // MARK: - UITextFieldDelegate ::
     
     
     // MARK: - UITextViewDelegate ::
     
     
     // MARK: - WebService Functions ::
     
     
     */
    
    
    
   // MARK:- ---> Textfield Delegates
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        print("TextField did begin editing method called")
    }
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        print("TextField did end editing method called\(String(describing: textField.text))")
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        print("TextField should begin editing method called")
        return true;
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool
    {
        print("TextField should clear method called")
        return true;
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        print("TextField should end editing method called")
        return true;
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        print("While entering the characters this method gets called")
        return true;
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true;
    }

}
