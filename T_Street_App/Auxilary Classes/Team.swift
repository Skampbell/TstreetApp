//
//  Team.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/16/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Team {
    // Private vars
    private var age:   Int
    private var coach: String
    
    init() {
        age = 0
        coach = "Coach"
    }
    init(snap: DataSnapshot) {
        print("Team snap: " + snap.description)
        age = 0
        coach = "Coach"
    }
}
