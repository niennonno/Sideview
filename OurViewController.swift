//
//  OurViewController.swift
//  Sideview
//
//  Created by Aditya Vikram Godawat on 22/03/16.
//  Copyright © 2016 Wow Labz. All rights reserved.
//

import UIKit

class OurViewController: UIViewController {

  
    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if( self.revealViewController() != nil){
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
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
