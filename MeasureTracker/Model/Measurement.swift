 //
//  Measurement.swift
//  MeasureTracker
//
//  Created by Gina on 12.7.2020.
//  Copyright © 2020 Gina. All rights reserved.
//

import Foundation

 enum Units: String {
    case cm 
    case inch
 }
 
 struct Measurement {
    let value: Double
    let unit: Units
    let date: Date
 }
