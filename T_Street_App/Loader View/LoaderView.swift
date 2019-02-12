//
//  File.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/9/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit

protocol LoaderViewDelegate:class {
    func animateLabel()
}

class LoaderView: UIView {
    
    weak var delegate:LoaderViewDelegate?
    var parentFrame :CGRect    = CGRect()
    let maskLayer              = CALayer()
    let backgroundLayer        = BackgroundLayer()
    let shadowLayer            = ShadowLayer()
    public let foregroundLayer = ForegroundLayer()
    private var animationDone  = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Setup and add mask layer to block contents
        maskLayer.backgroundColor = UIColor.white.cgColor
        maskLayer.frame           = CGRect(x: -1000, y: -1000, width: 10000, height: 10000)
        layer.addSublayer(maskLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("LoaderView init failed")
    }
    
    //*! Adds background layer and animates it */
    public func DropBackground(){
        layer.addSublayer(backgroundLayer)
        backgroundLayer.drop()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.FillForeground()
        }
    }
    
    //*! Adds and fills foreground of logo */
    public func FillForeground(){
        layer.addSublayer(foregroundLayer)
        foregroundLayer.fill()
    }
    
    //*! This functino can be checked by parent to determine if aniumation is over */
    public func isDone() -> Bool {
        return animationDone
    }
}
extension LoaderView {
    func pinEdges(to other: UIView) {
        leadingAnchor.constraint(equalTo: other.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: other.trailingAnchor).isActive = true
        topAnchor.constraint(equalTo: other.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: other.bottomAnchor).isActive = true
    }
    func fadeOut(duration: TimeInterval = 0.4) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0.0
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.removeFromSuperview()
        }
    }
}

