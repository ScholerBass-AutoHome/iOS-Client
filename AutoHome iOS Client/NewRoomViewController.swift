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
    var rooms = [Room]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let roomName : String = roomNameField.text
        
        self.rooms.append(Room(name: roomName, numApps: 0))
        var svc = segue.destinationViewController as RoomsViewController
        
        svc.rooms = rooms
    }
}