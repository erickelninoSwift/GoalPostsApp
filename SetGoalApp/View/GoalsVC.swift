//
//  GoalsVC.swift
//  SetGoalApp
//
//  Created by El nino Cholo on 2020/09/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class GoalsVC : UIViewController
{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
    navigationController?.navigationBar.barStyle = .black
    }
    override func viewDidLoad() {
        
      
        super.viewDidLoad()
    }
    @IBAction func addgoas(_ sender: Any)
    {
    }
}
