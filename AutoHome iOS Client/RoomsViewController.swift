//
//  RoomsViewController.swift
//  AutoHome iOS Client
//
//  Created by Ben Scholer on 3/15/15.
//  Copyright (c) 2015 AutoHome. All rights reserved.
//

import Foundation
import UIKit

class RoomsViewController: UITableViewController {
    
    var rooms: [Room] = [Room]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var inset: UIEdgeInsets
        inset = UIEdgeInsetsMake(20, 0, 0, 0);
        self.tableView.contentInset = inset;
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
        cell.detailTextLabel?.text = String(room.numApps) + " Appliances"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let roomViewController: RoomViewController = RoomViewController()
        
        self.presentViewController(roomViewController, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let key = "roomsArray"
        
        defaults.setObject(rooms, forKey: key)
    }
    
//    func saveRooms(seque: UIStoryboardSegue) {
//        userDefaults.setValue(rooms, forKey: "rooms")
//    }

}