//
//  CreateGoalVC.swift
//  SetGoalApp
//
//  Created by El nino Cholo on 2020/09/05.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class CreateGoalVc: UIViewController
{
    @IBOutlet weak var shorttermbutton: UIButton!
    @IBOutlet weak var logntermbutton: UIButton!
    
    @IBOutlet weak var thegoalstoset: UITextView!
    
    @IBOutlet weak var nextbutton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func nextButton(_ sender: Any) {
        
        print("nextButton")
    }
    
    @IBAction func logterm(_ sender: Any) {
         print("longterm")
    }
    @IBAction func shortterm(_ sender: Any) {
         print("short term")
    }
    
    @IBAction func backbutton(_ sender: Any)
    {
        if let Goalvc = storyboard?.instantiateViewController(identifier: "GoalViewController") as? GoalsVC
        {
            dismissAnimation(Goalvc)
        }else
        {
            print("there was no view to be dimiss to")
        }
    }
}
