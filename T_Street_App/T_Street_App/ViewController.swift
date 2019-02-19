//
//  ViewController.swift
//  T_Street_App
//
//  Created by Skyler Campbell on 2/5/19.
//  Copyright © 2019 Tstreet_Volleyball_Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Constant deffinitions
    fileprivate var loaderView:  LoaderView    = LoaderView()    //*! View that holds the splash animation
    fileprivate var dashView:    DashboardView = DashboardView() //*! View that holds the dashboard buttons
    fileprivate var statusLight: Bool          = true            //*! Tells view controller whether to draw status bar
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Hide navigation bar for splash
        self.hideNavigationBar()
        
        // Play splash animation
        let centerRect: CGRect = getCenteredFrame(frameImage: #imageLiteral(resourceName: "Single Logo.png"), view: view)
        view.addSubview(loaderView)
        loaderView.frame = centerRect
        loaderView.DropBackground()
        
        // Remove mask view after animation is finished
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
            
            // Fade layers out
            self.loaderView.fadeOut()
            
            // Repaint status bar for dash
            self.statusLight = false
            self.setNeedsStatusBarAppearanceUpdate()
            
            // Show navigation bar
            self.showNavigationBar()
        }
        
        
    }
    
    // Will hide status bar while splash plays
    override var prefersStatusBarHidden: Bool {
        return statusLight
    }
}


extension ViewController {
    /*!
     * Function that takes generates a centered frame based
     * on current view and image size
     * PARAMS: UIImage, UIView
     * OUTPUT: Rectangle for frame bounds
     */
    func getCenteredFrame(frameImage: UIImage, view: UIView) -> CGRect {
        // INITIALIZATION
        var retRect = CGRect()             //!< The value returned
        let center = view.center           //!< Coordinate of the center of screen
        
        // Subtract the size of image from center for origin
        let origin = CGPoint(x: center.x - (frameImage.size.width/2.0), y: center.y - (frameImage.size.height/2.0))
        
        // construct retangle
        retRect = CGRect(x: origin.x, y: origin.y, width: frameImage.size.width+10, height: frameImage.size.height)
        
        // Return value
        return retRect
    }
    
    func hideNavigationBar(){
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    
    func showNavigationBar() {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
