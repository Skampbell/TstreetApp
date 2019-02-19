//
//  CalendarViewController.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/12/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit
import JTAppleCalendar

class CalendarViewController: UIViewController {

    
    
    @IBOutlet var collectionView: CalendarView!
    let store = DataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Update nave bar title
        navigationItem.title = "Calendar"
        
        // Keep views from under the nav bar
        self.edgesForExtendedLayout = UIRectEdge.bottom
        
        // Get events in cells
        store.getEvents {
            self.collectionView.reloadSections(IndexSet(integer: 0))
        }
        
        // Define itself as delegate
        if let layout = collectionView?.collectionViewLayout as? CalendarLayout {
            layout.delegate = self
        }
        
    }
    
}

extension CalendarViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return store.days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DayCell
        
        let day = store.days[indexPath.row]
        debugPrint("Index path row: " + String(indexPath.row))
        debugPrint("Index path section: " + String(indexPath.section))
//        cell.setTitle(newTitle: event.location)
        cell.setDay(newDay: day)
        
        cell.displayContent()
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return getCellSize(padding: 20.0)
    }
    
    func getCellSize(padding: CGFloat) -> CGSize {
        // Get screen size
        let viewRect = view.frame
        
        // Make size
        let retSize = CGSize(width: viewRect.width - (2*padding), height: viewRect.height - (2*padding))
        
        return retSize
    }
    func getCellFrame(padding: CGFloat) -> CGRect {
        // Get screen size
        let viewRect = view.frame
        
        // Make size
        let cellSize = CGSize(width: viewRect.width - (2*padding), height: viewRect.height - (2*padding))
        
        // Make rect
        let retRec = CGRect(x: padding, y: padding, width: cellSize.width, height: cellSize.height)
        return retRec
    }
    
}
