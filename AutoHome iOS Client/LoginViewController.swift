//
//  LoginViewController.swift
//  AutoHome iOS Client
//
//  Created by Ben Scholer on 3/15/15.
//  Copyright (c) 2015 AutoHome. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var rooms = [Room]()
        
        var svc = segue.destinationViewController as RoomsViewController
        
        svc.rooms = rooms
    }
}