//
//  SecondViewController.swift
//  ResideMenu
//
//  Created by MathewWang on 2/23/16.
//  Copyright © 2016 MathewWang. All rights reserved.
//

import UIKit

class SecondViewController: ViewController {
    
    var button: UIButton! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "SecondView"
        self.initNatigationBar()
        
        self.view.backgroundColor = UIColor.yellowColor()
        
        button = UIButton(type: .Custom)
        button.backgroundColor = UIColor.redColor()
        button.setTitle("Push a view controller", forState: .Normal)
        button.addTarget(self, action: "goToNextViewController", forControlEvents: .TouchUpInside)
        button.frame = CGRectMake(70, 200, 200, 60)
        self.view.addSubview(button)
    }
    
    func goToNextViewController(){
        let VCtrl = UIViewController()
        VCtrl.view.backgroundColor = UIColor.grayColor()
        self.navigationController?.pushViewController(VCtrl, animated: true)
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
