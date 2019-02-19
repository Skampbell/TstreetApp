//
//  TimeFrame.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/16/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import FirebaseDatabase

class TimeFrame {
    // Private vars
    private var startTime: Date
    private var endTime:   Date
    
    init() {
        
        startTime = Date()
        endTime = Date()
    }
    init(snap: DataSnapshot){
        
        startTime = Date()
        endTime = Date()
        print("Time snap: " + snap.description)
    }
}
