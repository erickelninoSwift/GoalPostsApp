//
//  ExtensionVC.swift
//  SetGoalApp
//
//  Created by El nino Cholo on 2020/09/05.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

extension UIViewController
{
    func presentview(_ viewControllertodisplay: UIViewController)
    {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .push
        transition.subtype = .some(.fromTop)
        self.view.window?.layer.add(transition, forKey: kCATransition)
        self.present(viewControllertodisplay, animated: false, completion: nil)
        
    }
    
    func dismissAnimation(_ erickviewcontroller: UIViewController)
    {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .push
        transition.subtype = .fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        self.present(erickviewcontroller, animated: false, completion: nil)
    }
    
}
