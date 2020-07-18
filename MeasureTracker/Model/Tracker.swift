//
//  Tracker.swift
//  MeasureTracker
//
//  Created by Gina on 12.7.2020.
//  Copyright © 2020 Gina. All rights reserved.
//

import Foundation

class Tracker: Identifiable, ObservableObject {
    let id = UUID()
    
    let name: String
    var measurements = [Measurement]()
    
    init(name: String, measurements: [Measurement] = [Measurement]()) {
        self.name = name
        self.measurements = measurements
    }
}
