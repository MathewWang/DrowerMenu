//
//  ViewController+Menu.swift
//  ResideMenu
//
//  Created by MathewWang on 2/23/16.
//  Copyright © 2016 MathewWang. All rights reserved.
//

import UIKit

extension ViewController {
    
    var sideMenuViewController : UIViewController{
        get {
            let VC : UIViewController! = self.parentViewController
            if (VC.isKindOfClass(MenuViewController.classForCoder())){
                return VC as! MenuViewController;
            }else {
                return VC.parentViewController as! MenuViewController
            }
        }
    }
    
    //base method to set up navigator bar
    func initNatigationBar(){
        let rightItem = UIBarButtonItem(title: "Right", style:.Plain, target: self, action: "rightMenu")
        self.navigationItem.rightBarButtonItem = rightItem
        
        let leftItem = UIBarButtonItem(title: "left", style:.Plain, target: self, action: "leftMenu")
        self.navigationItem.leftBarButtonItem = leftItem
        
    }
    
    //right button click event
    func rightMenu(){
        print("right button clicked")
        (self.sideMenuViewController as! MenuViewController).showRightMenuView()
    }
    
    //left button click event
    func leftMenu(){
        print("left button clicked")
        (self.sideMenuViewController as! MenuViewController).showLeftMenuView()
    }
}