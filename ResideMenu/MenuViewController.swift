//
//  MenuViewController.swift
//  ResideMenu
//
//  Created by MathewWang on 2/23/16.
//  Copyright © 2016 MathewWang. All rights reserved.
//

import UIKit

class MenuViewController: ViewController {
    
    var contentViewController : UINavigationController! = nil
    var leftViewController : UIViewController! = nil
    var rightViewController : UIViewController! = nil
    var backgroudView : UIView! = nil
    var menuViewContainer : UIView! = nil
    var contentViewContainer : UIView! = nil
    
    func initMenuViewCtrl(contentVC : UINavigationController, leftVC : UIViewController, rightVC : UIViewController){
        contentViewController = contentVC
        leftViewController = leftVC
        rightViewController = rightVC
    }
    
    func showLeftMenuView(){
        print("show left menu view")
        self.leftViewController.view.hidden = false
        UIView.animateWithDuration(0.5) { () -> Void in
            if(self.contentViewContainer.frame.minX == 0){
                self.rightViewController.view.hidden = true
                self.contentViewContainer.frame = CGRectMake(100, 0, self.view.frame.width, self.view.frame.height)
                self.contentViewContainer.transform = CGAffineTransformMakeScale(0.8, 0.8)
                self.backgroudView.transform = CGAffineTransformIdentity
            }else{
                self.contentViewContainer.transform = CGAffineTransformIdentity
                self.contentViewContainer.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
                self.backgroudView.transform = CGAffineTransformMakeScale(1.5, 1.5)
            }
        }
    }
    
    func showRightMenuView(){
        print("show right menu view")
        self.rightViewController.view.hidden = false
        UIView.animateWithDuration(0.5) { () -> Void in
            if(self.contentViewContainer.frame.minX == 0){
                self.leftViewController.view.hidden = true
                self.contentViewContainer.frame = CGRectMake(-100, 0, self.view.frame.width, self.view.frame.height)
                self.contentViewContainer.transform = CGAffineTransformMakeScale(0.8, 0.8)
                self.backgroudView.transform = CGAffineTransformIdentity
            }else{
                self.contentViewContainer.transform = CGAffineTransformIdentity
                self.contentViewContainer.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
                self.backgroudView.transform = CGAffineTransformMakeScale(1.5, 1.5)
            }
        }
    }
    
    func commonInit(){
        //init background view
        backgroudView = UIView(frame: self.view.bounds)
        let backImagView : UIImageView = UIImageView(frame: self.view.bounds)
        backImagView.image = UIImage(named:"Stars")
        backgroudView.addSubview(backImagView)
        self.view.addSubview(backgroudView)
        backgroudView.transform = CGAffineTransformMakeScale(1.5, 1.5)
        
        menuViewContainer = UIView(frame: self.view.bounds)
        self.view.addSubview(menuViewContainer)
        
        contentViewContainer = UIView(frame: self.view.bounds)
        self.view.addSubview(contentViewContainer)
    }
    
    func menuItemDidSeleced(sideVC:ViewController, itemIndex:NSInteger){
        if(sideVC.isKindOfClass(LeftMenuViewController.classForCoder())){
            if(itemIndex == 0){
                
                let firstCtrl = FirstViewController()
                let naviCtrl = UINavigationController(rootViewController: firstCtrl)
                
                self.addChildViewController(naviCtrl)
                naviCtrl.view.alpha = 0;
                naviCtrl.view.frame = CGRectMake(0, 0, self.contentViewContainer.bounds.width, self.contentViewContainer.bounds.height)
                self.contentViewContainer.addSubview(naviCtrl.view)
                
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    naviCtrl.view.alpha = 1
                    }, completion: { (finished:Bool) -> Void in
                        self.contentViewController.willMoveToParentViewController(nil)
                        self.contentViewController.view .removeFromSuperview()
                        self.contentViewController.removeFromParentViewController()
                        
                        naviCtrl.didMoveToParentViewController(self)
                        self.contentViewController = naviCtrl
                })
                
                self .showLeftMenuView()
                
                
            }else if(itemIndex == 1){
                let secondCtrl = SecondViewController()
                let naviCtrl = UINavigationController(rootViewController: secondCtrl)
                
                self.addChildViewController(naviCtrl)
                naviCtrl.view.alpha = 0;
                naviCtrl.view.frame = CGRectMake(0, 0, self.contentViewContainer.bounds.width, self.contentViewContainer.bounds.height)
                self.contentViewContainer.addSubview(naviCtrl.view)
                
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    naviCtrl.view.alpha = 1
                    }, completion: { (finished:Bool) -> Void in
                        self.contentViewController.willMoveToParentViewController(nil)
                        self.contentViewController.view .removeFromSuperview()
                        self.contentViewController.removeFromParentViewController()
                        
                        naviCtrl.didMoveToParentViewController(self)
                        self.contentViewController = naviCtrl
                })
                
                self .showLeftMenuView()
            }
        }else if(sideVC.isKindOfClass(RightMenuViewController.classForCoder())){
            if(itemIndex == 0){
                
                let firstCtrl = FirstViewController()
                let naviCtrl = UINavigationController(rootViewController: firstCtrl)
                
                self.addChildViewController(naviCtrl)
                naviCtrl.view.alpha = 0;
                naviCtrl.view.frame = CGRectMake(0, 0, self.contentViewContainer.bounds.width, self.contentViewContainer.bounds.height)
                self.contentViewContainer.addSubview(naviCtrl.view)
                
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    naviCtrl.view.alpha = 1
                    }, completion: { (finished:Bool) -> Void in
                        self.contentViewController.willMoveToParentViewController(nil)
                        self.contentViewController.view .removeFromSuperview()
                        self.contentViewController.removeFromParentViewController()
                        
                        naviCtrl.didMoveToParentViewController(self)
                        self.contentViewController = naviCtrl
                })
                
                self .showRightMenuView()
                
                
            }else if(itemIndex == 1){
                let secondCtrl = SecondViewController()
                let naviCtrl = UINavigationController(rootViewController: secondCtrl)
                
                self.addChildViewController(naviCtrl)
                naviCtrl.view.alpha = 0;
                naviCtrl.view.frame = CGRectMake(0, 0, self.contentViewContainer.bounds.width, self.contentViewContainer.bounds.height)
                self.contentViewContainer.addSubview(naviCtrl.view)
                
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    naviCtrl.view.alpha = 1
                    }, completion: { (finished:Bool) -> Void in
                        self.contentViewController.willMoveToParentViewController(nil)
                        self.contentViewController.view .removeFromSuperview()
                        self.contentViewController.removeFromParentViewController()
                        
                        naviCtrl.didMoveToParentViewController(self)
                        self.contentViewController = naviCtrl
                })
                
                self .showRightMenuView()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commonInit()
        // Do any additional setup after loading the view.
        
        //add the left menu view
        self.addChildViewController(leftViewController)
        leftViewController.view.frame = self.view.bounds
        menuViewContainer.addSubview(leftViewController.view)
        leftViewController.didMoveToParentViewController(self)
        
        //add the right menu view
        self.addChildViewController(rightViewController)
        rightViewController.view.frame = self.view.bounds
        menuViewContainer.addSubview(rightViewController.view)
        rightViewController.didMoveToParentViewController(self)
        
        //add the content view
        self.addChildViewController(contentViewController)
        contentViewController.view.frame = self.view.bounds
        contentViewContainer.addSubview(contentViewController.view)
        contentViewController.didMoveToParentViewController(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    
}
