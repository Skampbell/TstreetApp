//
//  DataStore.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/14/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

final class DataStore {
    
    // DECLERATION
    static let sharedInstance = DataStore() //#! Create a instance that can be used multiple times
    var events: [Event] = []                //#! List of all events for the month
    fileprivate var ref: DatabaseReference!
    var days:   [Day] = []
    var dateFormatter = DateFormatter()
    
    fileprivate init() {
        dateFormatter.locale = Calendar.current.locale
        dateFormatter.timeZone = Calendar.current.timeZone
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }                   //#! Empty intializer
    
    func getEvents(completion: @escaping() -> Void) {
        print("Event count: " + String(events.count))
//        for i in 1...10 {
//            let event = Event(Teams: [String(i), String(i+1)], Time: "time", Location: String(i))
//            self.events.append(event)
//        }
        completion()
    }
    
    // Function will get data from database
    func getData() -> Bool {
        
        let month = String(Calendar.current.component(.month, from: Date()))
        let day = String(Calendar.current.component(.day, from: Date()))
        let year = String(Calendar.current.component(.year, from: Date()))
        
        // Reference database for current year
        ref = Database.database().reference().child(year)
        
        // Look at each month on database
        ref.queryOrderedByKey()
            .queryStarting(atValue: month) // Start at todays month
            .observeSingleEvent(of: .value, with: {snap in
            for monthChild in snap.children.allObjects as! [DataSnapshot]{
                let thisMonth = monthChild.key
                // Check if month is today or in future
                if thisMonth == month{
                
                    // Itrate days
                    for dayChild in monthChild.children.allObjects as! [DataSnapshot]{
                        let thisDay = dayChild.key
                        // Check if day is today or in future
                        if Int(thisDay)! >= Int(day)! {
                            for child in dayChild.children.allObjects as! [DataSnapshot]{
                                var curEvents: [Event] = []
                                
                                // Put each event into an object
                                for eventChild in child.children.allObjects as! [DataSnapshot]{
                                    print(eventChild.key)
                                    self.events.append(Event(snap: eventChild))
                                    curEvents.append(Event(snap: eventChild))
                                }
                                
                                // Make Day with events and date
                                let thisDate = self.dateFormatter.date(from: String(year + "-" + thisMonth + "-" + thisDay))
                                let newDay = Day(newEvents: curEvents, newDate: thisDate!)
                                self.days.append(newDay)
                            }
                        }
                    }
                }
            }
        })
        print("Snapshot: " )
        return false
    }
    
}
