//
//  BackgroundLayer.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/9/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation

import UIKit

class BackgroundLayer: CAShapeLayer{
    
    override init() {
        super.init()
        fillColor = UIColor(named: "Pan317")?.cgColor
        path      = arcPathSmall.cgPath
        lineWidth = 2.0
    }
    
    init(frame: CGRect){
        super.init()
        fillColor = UIColor(named: "Pan317")?.cgColor
        path      = arcPathSmall.cgPath
        bounds    = frame
        lineWidth = 2.0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Background Layer init failed")
    }
    
    var arcPathSmall: UIBezierPath{
        // DECLERATION
        let path = UIBezierPath()
        
        // Draw shape
        path.move(to: CGPoint(x: 115.763, y: 38.903))
        path.addCurve(to: CGPoint(x: 109.558, y: 33.63), controlPoint1:CGPoint(x: 114.54, y: 37.382), controlPoint2:CGPoint(x: 112.776, y: 35.626))
        path.addCurve(to: CGPoint(x: 55.879, y: 28.264), controlPoint1:CGPoint(x: 97.35, y: 26.527), controlPoint2:CGPoint(x: 77.352, y: 24.088))
        path.addCurve(to: CGPoint(x: 2.634, y: 71.533), controlPoint1:CGPoint(x: 23.069, y: 34.631), controlPoint2:CGPoint(x: -0.773, y: 54.002))
        path.addCurve(to: CGPoint(x: 68.201, y: 91.74), controlPoint1:CGPoint(x: 6.033, y: 89.057), controlPoint2:CGPoint(x: 35.389, y: 98.109))
        path.addCurve(to: CGPoint(x: 108.998, y: 73.789), controlPoint1:CGPoint(x: 84.947, y: 88.488), controlPoint2:CGPoint(x: 99.354, y: 81.844))
        path.addCurve(to: CGPoint(x: 109.023, y: 73.766), controlPoint1:CGPoint(x: 109.008, y: 73.779), controlPoint2:CGPoint(x: 109.014, y: 73.779))
        path.addCurve(to: CGPoint(x: 110.092, y: 71.412), controlPoint1:CGPoint(x: 109.848, y: 72.939), controlPoint2:CGPoint(x: 110.111, y: 72.537))
        path.addCurve(to: CGPoint(x: 66.256, y: 89.736), controlPoint1:CGPoint(x: 101.485, y: 79.93), controlPoint2:CGPoint(x: 85.357, y: 87.051))
        path.addCurve(to: CGPoint(x: 8.729, y: 71.48), controlPoint1:CGPoint(x: 36.451, y: 93.938), controlPoint2:CGPoint(x: 10.687, y: 85.76))
        path.addCurve(to: CGPoint(x: 33.943, y: 44.722), controlPoint1:CGPoint(x: 7.374, y: 61.639), controlPoint2:CGPoint(x: 17.665, y: 51.474))
        path.addCurve(to: CGPoint(x: 48.973, y: 42.728), controlPoint1:CGPoint(x: 37.169, y: 43.617), controlPoint2:CGPoint(x: 42.639, y: 42.25))
        path.addCurve(to: CGPoint(x: 54.508, y: 41.329), controlPoint1:CGPoint(x: 51.032, y: 42.883), controlPoint2:CGPoint(x: 54.817, y: 42.717))
        path.addCurve(to: CGPoint(x: 51.652, y: 39.333), controlPoint1:CGPoint(x: 54.243, y: 40.112), controlPoint2:CGPoint(x: 52.688, y: 39.523))
        path.addCurve(to: CGPoint(x: 52.077, y: 39.241), controlPoint1:CGPoint(x: 51.797, y: 39.303), controlPoint2:CGPoint(x: 51.932, y: 39.273))
        path.addCurve(to: CGPoint(x: 69.516, y: 42.935), controlPoint1:CGPoint(x: 54.888, y: 38.98), controlPoint2:CGPoint(x: 60.66, y: 39.191))
        path.addCurve(to: CGPoint(x: 76.865, y: 43.139), controlPoint1:CGPoint(x: 72.053, y: 44), controlPoint2:CGPoint(x: 76.284, y: 45.13))
        path.addCurve(to: CGPoint(x: 72.017, y: 37.182), controlPoint1:CGPoint(x: 77.642, y: 40.475), controlPoint2:CGPoint(x: 71.812, y: 37.177))
        path.addCurve(to: CGPoint(x: 83.615, y: 40.849), controlPoint1:CGPoint(x: 76.628, y: 37.294), controlPoint2:CGPoint(x: 83.615, y: 40.849))
        path.addCurve(to: CGPoint(x: 89.033, y: 42.86), controlPoint1:CGPoint(x: 86.083, y: 41.885), controlPoint2:CGPoint(x: 87.58, y: 42.802))
        path.addCurve(to: CGPoint(x: 91.039, y: 40.498), controlPoint1:CGPoint(x: 92.114, y: 43.006), controlPoint2:CGPoint(x: 91.246, y: 41.012))
        path.addCurve(to: CGPoint(x: 88.598, y: 38.106), controlPoint1:CGPoint(x: 90.823, y: 39.963), controlPoint2:CGPoint(x: 89.897, y: 38.971))
        path.addCurve(to: CGPoint(x: 94.083, y: 39.251), controlPoint1:CGPoint(x: 90.438, y: 38.428), controlPoint2:CGPoint(x: 92.265, y: 38.808))
        path.addCurve(to: CGPoint(x: 101.896, y: 41.772), controlPoint1:CGPoint(x: 94.083, y: 39.251), controlPoint2:CGPoint(x: 98.572, y: 40.502))
        path.addCurve(to: CGPoint(x: 114.108, y: 45.625), controlPoint1:CGPoint(x: 107.181, y: 44.021), controlPoint2:CGPoint(x: 111.293, y: 46.169))
        path.addCurve(to: CGPoint(x: 117.292, y: 43.219), controlPoint1:CGPoint(x: 116.22, y: 45.209), controlPoint2:CGPoint(x: 117.099, y: 43.883))
        path.addCurve(to: CGPoint(x: 115.763, y: 38.903), controlPoint1:CGPoint(x: 117.519, y: 42.442), controlPoint2:CGPoint(x: 117.83, y: 41.482))
        
        path.stroke()
        path.close()
        
        // Return full path
        return path
    }

    
    /*!
    * This function will drop the layer onto the screen
    */
    func drop(){
        // DECLERATION
        let dropAnimation: CASpringAnimation = CASpringAnimation(keyPath: "transform.scale")
        
        // Do animation part
        dropAnimation.fromValue = 20
        dropAnimation.toValue = 1
        dropAnimation.initialVelocity = 0.1
        dropAnimation.damping = 10
        dropAnimation.mass = 0.2
        dropAnimation.duration  = 3
        
        // Apply animation to layer
        add(dropAnimation, forKey: nil)
    }
    func scale(Scale: CGFloat){
        transform = CATransform3DMakeScale(Scale, Scale, Scale)
    }
}
