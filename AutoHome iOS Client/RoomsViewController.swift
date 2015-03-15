//
//  RoomsViewController.swift
//  AutoHome iOS Client
//
//  Created by Ben Scholer on 3/15/15.
//  Copyright (c) 2015 AutoHome. All rights reserved.
//

import UIKit

class RoomsViewController: UITableViewController {
    
    var rooms = [Room]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rooms = [Room(name: "Living Room"), Room(name: "Kitchen")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.rooms.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("RoomCell", forIndexPath: indexPath) as UITableViewCell
        
        var room: Room
        
        room = rooms[indexPath.row]
        
        cell.textLabel?.text = room.name
        
        return cell
    }
}