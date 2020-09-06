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
        
        let strtanimation = Notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! CGRect
        let endAnimation = Notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        let detaY = endAnimation.origin.y - strtanimation.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions(rawValue: curve), animations: {
            self.frame.origin.y += detaY
        }, completion: nil)
    }
}
