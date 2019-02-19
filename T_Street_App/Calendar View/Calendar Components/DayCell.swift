//
//  DayCell.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/14/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit

class DayCell: UICollectionViewCell {
    
    private var title:    String = ""
    
    private let testView = UIStackView()
    private let dayLabel = UILabel()
    private var eventLabels: [UILabel] = []
    private var events: [Event] = []
    private var day:   Day!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        dayLabel.frame = bounds
        testView.axis = .vertical
        testView.frame = bounds
        testView.addSubview(dayLabel)
        addSubview(testView)
    }
    func setDay(newDay: Day){
        self.day = newDay
        dayLabel.text = ""
        
        for event in day.getEvents() {
            var newLabel = UILabel
            
        }
    }
    
    func displayContent() {
    }
    
}
	
