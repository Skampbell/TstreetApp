//
//  CalendarLayout.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/14/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import UIKit

class CalendarLayout: UICollectionViewLayout {

    // DECLERATION
    weak var delegate: UICollectionViewDelegate!                 //#! Keeps reference to delegate
    fileprivate var numberOfColumns        = 7                   //#! Configures number of columns (days of week)
    fileprivate var cellPadding:   CGFloat = 10.0                //#! Describes the distance between cells
    fileprivate var cache = [UICollectionViewLayoutAttributes]() //#! Will store the previously calculated attributes
    fileprivate var contentHeight: CGFloat = 0                   //#! Describes each cell height
    fileprivate var contentWidth:  CGFloat = 0
    fileprivate var daysShown              = 7*5                 //#! Defines the total number of days loaded to view
    
    // Override function that gives content size
    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    
    // This function will calculate all attribyutes needed by the layout
    override func prepare() {
        
        // Check if cache is empty
        guard cache.isEmpty == true, let collectionView = collectionView else {
            return
        }
        
        // Determine content sizes
        contentWidth  = getFullWidth()
        contentHeight = getFullHeight()
        
        // Define column width and all xoffsets
        let columnWidth = contentWidth / CGFloat(numberOfColumns)
        var xOffset = [CGFloat]()
        for column in 0 ..< numberOfColumns {
            xOffset.append(CGFloat(column) * columnWidth)
        }
        var column = 0
        var yOffset = [CGFloat](repeating: 0, count: numberOfColumns)
        
        // Loop through all items
        for item in 0 ..< collectionView.numberOfItems(inSection: 0) {
            
            let indexPath = IndexPath(item: item, section: 0)
            
            // Set height and frames of all items
            let height = collectionView.frame.height - (collectionView.frame.height * 0.11)
            let frame = CGRect(x: xOffset[column], y: yOffset[column], width: columnWidth, height: height)
            let insetFrame = frame.insetBy(dx: cellPadding, dy: cellPadding)
            
            // Create attributes object and add it to the cache
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            attributes.frame = insetFrame
            cache.append(attributes)
            
            // Compensate height for new item
            contentHeight = max(contentHeight, frame.maxY)
            yOffset[column] = yOffset[column] + height
            
            column = column < (numberOfColumns - 1) ? (column + 1) : 0
        }
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        var visibleLayoutAttributes = [UICollectionViewLayoutAttributes]()
        
        // Loop through the cache and look for items in the rect
        for attributes in cache {
            if attributes.frame.intersects(rect) {
                visibleLayoutAttributes.append(attributes)
            }
        }
        return visibleLayoutAttributes
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cache[indexPath.item]
    }
    
    // Uses screen size to get width
    func getFullWidth() -> CGFloat {
        // Declare screen size
        let screenSize = collectionView!.frame
        
        // Define return value for 7 days
        let retFloat = screenSize.width * 7
        
        return retFloat
    }
    
    // Uses screen size to get height
    func getFullHeight() -> CGFloat {
        // Declare screen size
        let screenSize = collectionView!.frame
        
        // Define return value for 7 days
        let retFloat = screenSize.height * CGFloat(daysShown/7)
        
        return retFloat
    }
    
}
