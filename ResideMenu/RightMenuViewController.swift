//
//  RightMenuViewController.swift
//  ResideMenu
//
//  Created by MathewWang on 2/23/16.
//  Copyright © 2016 MathewWang. All rights reserved.
//

import UIKit

class RightMenuViewController: ViewController,UITableViewDataSource,UITableViewDelegate {
    
    var myTableView : UITableView! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.clearColor()
        self.initView()
    }
    
    func initView(){
        myTableView = UITableView(frame: CGRectMake(0, 0, self.view.frame.width, 200), style:.Plain)
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "tableCell")
        myTableView.backgroundColor = UIColor.clearColor()
        myTableView.center = self.view.center
        self.view.addSubview(myTableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        tableView.separatorStyle = .None
        let myCell = tableView.dequeueReusableCellWithIdentifier("tableCell") as UITableViewCell!
        let row = indexPath.row as Int
        
        myCell.backgroundColor = UIColor.clearColor()
        myCell.selectionStyle = .None
        
        let label = UILabel(frame: CGRectMake(tableView.frame.width - 80,0,80,60))
        label.text = "test\(row)"
        label.textAlignment = .Center
        label.textColor!=UIColor.whiteColor()
        label.backgroundColor = UIColor.clearColor()
        myCell.contentView.addSubview(label)
        
        return myCell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView .deselectRowAtIndexPath(indexPath, animated: false)
        (self.sideMenuViewController as! MenuViewController).menuItemDidSeleced(self, itemIndex: indexPath.row)
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
