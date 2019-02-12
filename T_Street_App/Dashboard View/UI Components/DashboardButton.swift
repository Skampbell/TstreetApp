//
//  DashboardButton.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/11/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit

class DashboardButton: UIButton{
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.lightGray
        tintColor = UIColor.black
        
        layer.cornerRadius = 100
    }
    
}
