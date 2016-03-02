//
//  FirstViewController.swift
//  ResideMenu
//
//  Created by MathewWang on 2/23/16.
//  Copyright © 2016 MathewWang. All rights reserved.
//

import UIKit

class FirstViewController: ViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FirstView"
        
        // Do any additional setup after loading the view.
        self.initNatigationBar()
        
        let backImagView : UIImageView = UIImageView(frame: self.view.bounds)
        backImagView.image = UIImage(named:"Balloon")
        
        self.view.addSubview(backImagView)
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
