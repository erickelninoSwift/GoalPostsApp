//
//  GoalCell.swift
//  SetGoalApp
//
//  Created by El nino Cholo on 2020/09/04.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var gaolstext: UILabel!
    
    @IBOutlet weak var typesgoals: UILabel!
    
    @IBOutlet weak var numberofdays: UILabel!
    
    func configureCell(description: String , type: Goaltypes , goalprogress: Int)
    {
        self.typesgoals.text = description
        self.typesgoals.text = type.rawValue
        self.numberofdays.text = String(describing: goalprogress)
    }

}
