//
//  ShadowLayer.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/9/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import Foundation
import UIKit

class ShadowLayer: CAShapeLayer{
    
    override init() {
        super.init()
        
        fillColor = UIColor.black.cgColor
        path      = arcPath.cgPath
        lineWidth = 2.0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var arcPath: UIBezierPath{
        // DECLERATION
        let path = UIBezierPath()
        
        // Draw shape
        path.move(to: CGPoint(x: 116.493, y: 47.873))
        path.addCurve(to: CGPoint(x: 111.319, y: 41.679), controlPoint1:CGPoint(x: 115.729, y: 46.501), controlPoint2:CGPoint(x: 114.363, y: 44.373))
        path.addLine(to: CGPoint(x: 111.304, y: 41.663))
        path.addCurve(to: CGPoint(x: 64.473, y: 28.142), controlPoint1:CGPoint(x: 100.993, y: 33.035), controlPoint2:CGPoint(x: 83.485, y: 27.983))
        path.addCurve(to: CGPoint(x: 61.454, y: 28.202), controlPoint1:CGPoint(x: 63.474, y: 28.146), controlPoint2:CGPoint(x: 62.458, y: 28.167))
        path.addCurve(to: CGPoint(x: 21.03, y: 39.002), controlPoint1:CGPoint(x: 46.062, y: 28.77), controlPoint2:CGPoint(x: 31.712, y: 32.605))
        path.addCurve(to: CGPoint(x: 4.762, y: 62.482), controlPoint1:CGPoint(x: 10.221, y: 45.472), controlPoint2:CGPoint(x: 4.443, y: 53.814))
        path.addCurve(to: CGPoint(x: 60.796, y: 92.588), controlPoint1:CGPoint(x: 5.386, y: 79.611), controlPoint2:CGPoint(x: 30, y: 92.834))
        path.addCurve(to: CGPoint(x: 63.804, y: 92.516), controlPoint1:CGPoint(x: 61.792, y: 92.578), controlPoint2:CGPoint(x: 62.804, y: 92.559))
        path.addCurve(to: CGPoint(x: 104.871, y: 81.332), controlPoint1:CGPoint(x: 79.544, y: 91.934), controlPoint2:CGPoint(x: 94.127, y: 87.969))
        path.addLine(to: CGPoint(x: 104.947, y: 81.277))
        path.addCurve(to: CGPoint(x: 106.558, y: 78.713), controlPoint1:CGPoint(x: 105.906, y: 80.561), controlPoint2:CGPoint(x: 106.376, y: 80.068))
        path.addLine(to: CGPoint(x: 106.772, y: 77.104))
        path.addLine(to: CGPoint(x: 105.472, y: 78.07))
        path.addCurve(to: CGPoint(x: 64.91, y: 88.941), controlPoint1:CGPoint(x: 96.497, y: 84.742), controlPoint2:CGPoint(x: 81.335, y: 88.805))
        path.addCurve(to: CGPoint(x: 62.272, y: 88.928), controlPoint1:CGPoint(x: 64.035, y: 88.951), controlPoint2:CGPoint(x: 63.146, y: 88.938))
        path.addCurve(to: CGPoint(x: 45.478, y: 87.26), controlPoint1:CGPoint(x: 56.457, y: 88.832), controlPoint2:CGPoint(x: 50.792, y: 88.254))
        path.addLine(to: CGPoint(x: 54.246, y: 87.193))
        path.addLine(to: CGPoint(x: 67.316, y: 61.18))
        path.addLine(to: CGPoint(x: 96.732, y: 60.952))
        path.addLine(to: CGPoint(x: 100.545, y: 53.377))
        path.addLine(to: CGPoint(x: 19.808, y: 53.992))
        path.addLine(to: CGPoint(x: 16, y: 61.572))
        path.addLine(to: CGPoint(x: 45.287, y: 61.348))
        path.addLine(to: CGPoint(x: 33.822, y: 84.172))
        path.addCurve(to: CGPoint(x: 26.256, y: 80.945), controlPoint1:CGPoint(x: 31.122, y: 83.229), controlPoint2:CGPoint(x: 28.592, y: 82.148))
        path.addCurve(to: CGPoint(x: 11.835, y: 63.338), controlPoint1:CGPoint(x: 16.844, y: 76.107), controlPoint2:CGPoint(x: 11.724, y: 69.855))
        path.addCurve(to: CGPoint(x: 38.743, y: 42.078), controlPoint1:CGPoint(x: 11.986, y: 54.317), controlPoint2:CGPoint(x: 22.292, y: 46.162))
        path.addCurve(to: CGPoint(x: 44.711, y: 41.523), controlPoint1:CGPoint(x: 40.692, y: 41.722), controlPoint2:CGPoint(x: 42.7, y: 41.536))
        path.addCurve(to: CGPoint(x: 52.771, y: 42.428), controlPoint1:CGPoint(x: 47.487, y: 41.497), controlPoint2:CGPoint(x: 50.196, y: 41.803))
        path.addCurve(to: CGPoint(x: 56.342, y: 42.879), controlPoint1:CGPoint(x: 53.699, y: 42.653), controlPoint2:CGPoint(x: 55.127, y: 42.894))
        path.addCurve(to: CGPoint(x: 58.639, y: 42.204), controlPoint1:CGPoint(x: 57.469, y: 42.874), controlPoint2:CGPoint(x: 58.221, y: 42.653))
        path.addCurve(to: CGPoint(x: 58.993, y: 41.212), controlPoint1:CGPoint(x: 58.894, y: 41.928), controlPoint2:CGPoint(x: 59.012, y: 41.588))
        path.addCurve(to: CGPoint(x: 58.479, y: 39.854), controlPoint1:CGPoint(x: 58.958, y: 40.679), controlPoint2:CGPoint(x: 58.763, y: 40.233))
        path.addCurve(to: CGPoint(x: 71.728, y: 45.646), controlPoint1:CGPoint(x: 61.359, y: 40.413), controlPoint2:CGPoint(x: 65.84, y: 41.884))
        path.addCurve(to: CGPoint(x: 77.481, y: 47.862), controlPoint1:CGPoint(x: 72.544, y: 46.171), controlPoint2:CGPoint(x: 75.388, y: 47.877))
        path.addCurve(to: CGPoint(x: 79.553, y: 46.67), controlPoint1:CGPoint(x: 78.75, y: 47.848), controlPoint2:CGPoint(x: 79.312, y: 47.205))
        path.addCurve(to: CGPoint(x: 77.606, y: 41.36), controlPoint1:CGPoint(x: 80.304, y: 45.027), controlPoint2:CGPoint(x: 79.093, y: 43.049))
        path.addCurve(to: CGPoint(x: 85.161, y: 45.75), controlPoint1:CGPoint(x: 81.246, y: 42.851), controlPoint2:CGPoint(x: 85.119, y: 45.716))
        path.addLine(to: CGPoint(x: 85.204, y: 45.778))
        path.addCurve(to: CGPoint(x: 86.815, y: 46.852), controlPoint1:CGPoint(x: 85.801, y: 46.157), controlPoint2:CGPoint(x: 86.342, y: 46.528))
        path.addCurve(to: CGPoint(x: 90.205, y: 48.635), controlPoint1:CGPoint(x: 88.093, y: 47.72), controlPoint2:CGPoint(x: 89.104, y: 48.397))
        path.addCurve(to: CGPoint(x: 92.971, y: 48.064), controlPoint1:CGPoint(x: 91.536, y: 48.91), controlPoint2:CGPoint(x: 92.453, y: 48.717))
        path.addCurve(to: CGPoint(x: 93.24, y: 45.872), controlPoint1:CGPoint(x: 93.564, y: 47.307), controlPoint2:CGPoint(x: 93.327, y: 46.267))
        path.addLine(to: CGPoint(x: 93.231, y: 45.836))
        path.addCurve(to: CGPoint(x: 92.782, y: 44.843), controlPoint1:CGPoint(x: 93.166, y: 45.561), controlPoint2:CGPoint(x: 93.013, y: 45.219))
        path.addCurve(to: CGPoint(x: 95.308, y: 45.874), controlPoint1:CGPoint(x: 93.627, y: 45.173), controlPoint2:CGPoint(x: 94.474, y: 45.517))
        path.addCurve(to: CGPoint(x: 102.161, y: 49.445), controlPoint1:CGPoint(x: 95.533, y: 45.981), controlPoint2:CGPoint(x: 99.375, y: 47.8))
        path.addCurve(to: CGPoint(x: 104.319, y: 50.856), controlPoint1:CGPoint(x: 102.908, y: 49.921), controlPoint2:CGPoint(x: 103.625, y: 50.397))
        path.addCurve(to: CGPoint(x: 113.269, y: 55.106), controlPoint1:CGPoint(x: 107.946, y: 53.239), controlPoint2:CGPoint(x: 110.806, y: 55.127))
        path.addCurve(to: CGPoint(x: 113.402, y: 55.108), controlPoint1:CGPoint(x: 113.312, y: 55.108), controlPoint2:CGPoint(x: 113.357, y: 55.104))
        path.addCurve(to: CGPoint(x: 117.316, y: 52.874), controlPoint1:CGPoint(x: 115.732, y: 55.02), controlPoint2:CGPoint(x: 116.961, y: 53.661))
        path.addLine(to: CGPoint(x: 117.329, y: 52.846))
        path.addCurve(to: CGPoint(x: 116.493, y: 47.873), controlPoint1:CGPoint(x: 117.788, y: 51.842), controlPoint2:CGPoint(x: 118.072, y: 50.702))
        
        path.stroke()
        path.close()
        
        // Return full path
        return path
    }
    func scale(Scale: CGFloat){
        transform = CATransform3DMakeScale(Scale, Scale, Scale)
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
}

