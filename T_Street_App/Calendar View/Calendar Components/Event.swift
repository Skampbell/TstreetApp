//
//  Event.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/14/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Event {
    
    var teams: Array<Team>
    var time: TimeFrame
    var location: String!
    
    // Initialize with all vaules
//    init(Teams: Array<String>, Time: String, Location: String){
//        // Store in class variables
//        self.teams = Teams
//        self.time  = Time
//        self.location = Location
//    }
    
    // Initialize event from snapshot
    init(snap: DataSnapshot) {
        print(snap.description)
        // Decleration
        var thisTeams = [Team()]
        var thisTime  = TimeFrame()
        var thisLoc   = "Location"
        for child in snap.children.allObjects as! [DataSnapshot]{
            switch child.key {
            case "teams":
                thisTeams = [Team(snap: child)]
            case "time":
                thisTime = TimeFrame(snap: child)
            case "location":
                thisLoc = snap.key
            default:
            print("Default event snap case")
            }
        }
        
        self.teams    = thisTeams
        self.time     = thisTime
        self.location = thisLoc
    }
    
    
}
