//
//  TargetView.swift
//  MeasureTracker
//
//  Created by Gina on 14.7.2020.
//  Copyright © 2020 Gina. All rights reserved.
//

import SwiftUI

struct TargetView: View {
    var tracker: Tracker
    var currentDate = Date()
    @State private var value: Double = 0.0
    
    init(tracker: Tracker) {
        self.tracker = tracker
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment:.firstTextBaseline){
                    TextField("insert value...", value: $value, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .padding(.top, 10)
                        .padding(10)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        let measurement = Measurement(value: self.value, unit: .cm, date: Date())
                        self.tracker.measurements.append(measurement)
                    }) {
                        Text("+")
                            .frame(width: 30, height: 30)
                            .background(Color.yellow)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .padding(.trailing, 10 )
                            
                    }.buttonStyle(PlainButtonStyle())
                }
                
                Divider()
                Text("\(currentDate)")
                //saves empty space
                Spacer()
                    
                }.navigationBarTitle(Text("\(tracker.name) - Measurements History"), displayMode: .inline)        }
            
        
    }
    
}



