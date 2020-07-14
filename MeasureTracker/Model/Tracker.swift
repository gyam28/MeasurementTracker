//
//  Tracker.swift
//  MeasureTracker
//
//  Created by Gina on 12.7.2020.
//  Copyright © 2020 Gina. All rights reserved.
//

import Foundation

struct Tracker: Identifiable {
    let id = UUID()
    
    let name: String
    var measurements: [Measurement]
}
