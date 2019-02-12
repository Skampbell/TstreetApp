//
//  ForegroundLayer.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/9/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit

class ForegroundLayer: CAShapeLayer{
    
    override init() {
        super.init()
        
        fillColor = UIColor.clear.cgColor
        path      = arcPath.cgPath
        strokeColor = UIColor.black.cgColor
        strokeEnd = 0
        lineWidth = 1
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var arcPath: UIBezierPath{
        // DECLERATION
        let path = UIBezierPath()
        
        // Draw shape
        path.move(to: CGPoint(x: 115.895, y: 48.204))
        path.addCurve(to: CGPoint(x: 110.864, y: 42.19), controlPoint1:CGPoint(x: 114.974, y: 46.553), controlPoint2:CGPoint(x: 113.584, y: 44.596))
        path.addCurve(to: CGPoint(x: 61.479, y: 28.888), controlPoint1:CGPoint(x: 100.489, y: 33.51), controlPoint2:CGPoint(x: 82.153, y: 28.131))
        path.addCurve(to: CGPoint(x: 5.446, y: 62.453), controlPoint1:CGPoint(x: 29.899, y: 30.051), controlPoint2:CGPoint(x: 4.811, y: 45.069))
        path.addCurve(to: CGPoint(x: 63.787, y: 91.828), controlPoint1:CGPoint(x: 6.082, y: 79.836), controlPoint2:CGPoint(x: 32.202, y: 92.994))
        path.addCurve(to: CGPoint(x: 104.518, y: 80.75), controlPoint1:CGPoint(x: 79.909, y: 91.24), controlPoint2:CGPoint(x: 94.335, y: 87.039))
        path.addCurve(to: CGPoint(x: 104.54, y: 80.727), controlPoint1:CGPoint(x: 104.524, y: 80.742), controlPoint2:CGPoint(x: 104.527, y: 80.736))
        path.addCurve(to: CGPoint(x: 105.88, y: 78.621), controlPoint1:CGPoint(x: 105.433, y: 80.055), controlPoint2:CGPoint(x: 105.737, y: 79.705))
        path.addCurve(to: CGPoint(x: 62.259, y: 89.615), controlPoint1:CGPoint(x: 96.599, y: 85.516), controlPoint2:CGPoint(x: 80.5, y: 89.92))
        path.addCurve(to: CGPoint(x: 38.254, y: 86.273), controlPoint1:CGPoint(x: 53.568, y: 89.469), controlPoint2:CGPoint(x: 45.402, y: 88.268))
        path.addLine(to: CGPoint(x: 53.606, y: 86.154))
        path.addLine(to: CGPoint(x: 66.672, y: 60.14))
        path.addLine(to: CGPoint(x: 96.091, y: 59.919))
        path.addLine(to: CGPoint(x: 98.854, y: 54.423))
        path.addLine(to: CGPoint(x: 20.454, y: 55.032))
        path.addLine(to: CGPoint(x: 17.69, y: 60.52))
        path.addLine(to: CGPoint(x: 46.985, y: 60.294))
        path.addLine(to: CGPoint(x: 34.5, y: 85.127))
        path.addCurve(to: CGPoint(x: 11.15, y: 63.326), controlPoint1:CGPoint(x: 20.312, y: 80.363), controlPoint2:CGPoint(x: 10.995, y: 72.311))
        path.addCurve(to: CGPoint(x: 38.6, y: 41.405), controlPoint1:CGPoint(x: 11.315, y: 53.653), controlPoint2:CGPoint(x: 22.405, y: 45.428))
        path.addCurve(to: CGPoint(x: 52.928, y: 41.76), controlPoint1:CGPoint(x: 41.772, y: 40.834), controlPoint2:CGPoint(x: 47.085, y: 40.34))
        path.addCurve(to: CGPoint(x: 58.307, y: 41.253), controlPoint1:CGPoint(x: 54.828, y: 42.226), controlPoint2:CGPoint(x: 58.394, y: 42.634))
        path.addCurve(to: CGPoint(x: 55.926, y: 38.899), controlPoint1:CGPoint(x: 58.232, y: 40.047), controlPoint2:CGPoint(x: 56.867, y: 39.24))
        path.addCurve(to: CGPoint(x: 56.337, y: 38.879), controlPoint1:CGPoint(x: 56.061, y: 38.895), controlPoint2:CGPoint(x: 56.202, y: 38.883))
        path.addCurve(to: CGPoint(x: 72.098, y: 45.07), controlPoint1:CGPoint(x: 59.001, y: 39.057), controlPoint2:CGPoint(x: 64.361, y: 40.13))
        path.addCurve(to: CGPoint(x: 78.936, y: 46.386), controlPoint1:CGPoint(x: 74.311, y: 46.482), controlPoint2:CGPoint(x: 78.105, y: 48.215))
        path.addCurve(to: CGPoint(x: 75.271, y: 39.913), controlPoint1:CGPoint(x: 80.045, y: 43.941), controlPoint2:CGPoint(x: 75.074, y: 39.878))
        path.addCurve(to: CGPoint(x: 85.57, y: 45.203), controlPoint1:CGPoint(x: 79.56, y: 40.727), controlPoint2:CGPoint(x: 85.57, y: 45.203))
        path.addCurve(to: CGPoint(x: 90.345, y: 47.966), controlPoint1:CGPoint(x: 87.729, y: 46.577), controlPoint2:CGPoint(x: 88.995, y: 47.676))
        path.addCurve(to: CGPoint(x: 92.563, y: 45.994), controlPoint1:CGPoint(x: 93.199, y: 48.566), controlPoint2:CGPoint(x: 92.684, y: 46.52))
        path.addCurve(to: CGPoint(x: 90.632, y: 43.323), controlPoint1:CGPoint(x: 92.439, y: 45.445), controlPoint2:CGPoint(x: 91.711, y: 44.348))
        path.addCurve(to: CGPoint(x: 95.591, y: 45.254), controlPoint1:CGPoint(x: 92.303, y: 43.905), controlPoint2:CGPoint(x: 93.952, y: 44.551))
        path.addCurve(to: CGPoint(x: 102.517, y: 48.864), controlPoint1:CGPoint(x: 95.591, y: 45.254), controlPoint2:CGPoint(x: 99.599, y: 47.135))
        path.addCurve(to: CGPoint(x: 113.376, y: 54.417), controlPoint1:CGPoint(x: 107.134, y: 51.83), controlPoint2:CGPoint(x: 110.665, y: 54.518))
        path.addCurve(to: CGPoint(x: 116.696, y: 52.583), controlPoint1:CGPoint(x: 115.407, y: 54.343), controlPoint2:CGPoint(x: 116.42, y: 53.194))
        path.addCurve(to: CGPoint(x: 115.895, y: 48.204), controlPoint1:CGPoint(x: 117.024, y: 51.872), controlPoint2:CGPoint(x: 117.456, y: 51))
        
        path.stroke()
        path.close()
        // Return full path
        return path
    }
    
    /*!
     * This function will animtate the forground layer
     */
    func fill(){
        // DECLERATION
        let strokeAnimation = CABasicAnimation(keyPath: "strokeEnd")
        let fillAnimation   = CABasicAnimation(keyPath: "fillColor")
        let groupAnimation  = CAAnimationGroup()
        
        // Intialize animation parameters
        strokeAnimation.toValue = 1
        strokeAnimation.duration = 1 // seconds
        strokeAnimation.beginTime = 0.0
        strokeAnimation.isRemovedOnCompletion = false
        strokeAnimation.fillMode = CAMediaTimingFillMode.forwards
        
        fillAnimation.toValue = UIColor(named: "Pan3115")?.cgColor
        fillAnimation.duration = 0.5
        fillAnimation.beginTime = strokeAnimation.beginTime + strokeAnimation.duration - 0.2
        fillAnimation.isRemovedOnCompletion = false
        
        // Define group animation paramaters
        groupAnimation.animations = [strokeAnimation, fillAnimation]
        groupAnimation.duration = fillAnimation.beginTime + fillAnimation.duration
        groupAnimation.isRemovedOnCompletion = false
        groupAnimation.fillMode = CAMediaTimingFillMode.forwards
        
        add(groupAnimation, forKey: nil)
    }
    
    /*!
     * Scales layer
     */
    func scale(Scale: CGFloat){
        transform = CATransform3DMakeScale(Scale, Scale, Scale)
    }

}
