//
//  DashboardNavBar.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/11/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit

class DashboardNavBar: UINavigationBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.black
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = UIColor.blue
    }
}
