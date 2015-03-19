//
//  NewRoomViewController.swift
//  AutoHome iOS Client
//
//  Created by Ben Scholer on 3/16/15.
//  Copyright (c) 2015 AutoHome. All rights reserved.
//

import UIKit

class NewRoomViewController: UIViewController {
    
    @IBOutlet weak var roomNameField: UITextField!
    
    var rooms: [Room] = [Room]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let key = "roomsArray"

        rooms = defaults.objectForKey(key)
    }
}