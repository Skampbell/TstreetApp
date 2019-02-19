//
//  Day.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/16/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation

class Day {
    
    // Private object variables
    private var events: [Event]
    private var date:   Date!
    
    // Constructor
    init() {
        events = []
        date   = Date()
    }
    
    // Initialize with list of events
    init(newEvents: [Event]) {
        events = newEvents
        date   = Date()
    }
    
    // Initialize with events and date
    init(newEvents: [Event], newDate: Date) {
        events = newEvents
        date   = newDate
    }
    
    // Setters and getters
    func addEvent(newEvent: Event) {
        events.append(newEvent)
    }
    
    func  setDate(newDate: Date) {
        date = newDate
    }
    
    func getDate() -> Date {
        return date
    }
    
    func getEvents() -> [Event] {
        return events
    }
    
    func getEvent(index: Int) -> Event {
        return events[index]
    }
    
}
