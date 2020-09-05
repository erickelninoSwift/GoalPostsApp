//
//  UIViewExtension.swift
//  SetGoalApp
//
//  Created by El nino Cholo on 2020/09/05.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

extension UIView
{
    func bindkeyboard()
    {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillchange(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc func keyboardwillchange(_ Notification: NSNotification)
    {
        let duration = Notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = Notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        
    }
}
