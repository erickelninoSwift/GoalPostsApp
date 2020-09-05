//
//  GoalsVC.swift
//  SetGoalApp
//
//  Created by El nino Cholo on 2020/09/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC : UIViewController ,UITableViewDelegate, UITableViewDataSource
{
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell:GoalCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? GoalCell
        {
            
            cell.configureCell(description: "Drink more coffee everyday ", type: Goaltypes.ShortTerm, goalprogress: 2)
            
            return cell
            
        }else
        {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    @IBAction func addgoas(_ sender: Any)
    {
       if let CreateVc = storyboard?.instantiateViewController(identifier: "CreateGoalVC") as? CreateGoalVc
       {
            
           presentview(CreateVc)
        
       }else
       {
        print("There was no view found")
        
        }
    }
}
