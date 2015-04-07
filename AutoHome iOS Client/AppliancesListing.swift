//
//  AppliancesListing.swift
//  AutoHome iOS Client
//
//  Created by Ben Scholer on 3/30/15.
//  Copyright (c) 2015 AutoHome. All rights reserved.
//

import UIKit
import Foundation

class AppliancesListing: UICollectionView {
    
    let reuseID = "ApplianceCellView"
    
    override func numberOfItemsInSection(section: Int) -> Int {
        return 5
    }
}
