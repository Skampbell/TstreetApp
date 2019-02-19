//
//  DashboardView.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/11/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit

class DashboardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black
    }
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        backgroundColor = UIColor.black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("DashboardView init failed")
    }
}

