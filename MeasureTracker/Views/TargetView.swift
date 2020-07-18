//
//  TargetView.swift
//  MeasureTracker
//
//  Created by Gina on 14.7.2020.
//  Copyright © 2020 Gina. All rights reserved.
//

import SwiftUI

struct TargetView: View {
    @ObservedObject var tracker: Tracker
    var currentDate = Date()
    @State private var value: String = ""
    @State private var measurements = [Measurement]()
    
    init(tracker: Tracker, measurements: [Measurement]) {
        self.tracker = tracker
        self.measurements = measurements
    }
    
    var body: some View {
        NavigationView  {
            VStack {
                HStack(alignment:.firstTextBaseline){
                    TextField("insert value...", text: $value)
                        .keyboardType(.numberPad)
                        .padding(.top, 10)
                        .padding(10)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        if let numericValue = Double(self.value) {
                            let measurement = Measurement( value: numericValue, unit: .cm, date: Date())
                            self.tracker.measurements.append(measurement)
                            print(self.tracker.measurements)
                            
                        }
           
                    }) {
                        Text("+")
                            .frame(width: 30, height: 30)
                            .background(Color.yellow)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .padding(.trailing, 10 )
                            
                    }.buttonStyle(PlainButtonStyle())
                }
                
////                Divider()
                List(measurements) { measure in
                    Text("\(measure.value) \(measure.unit.rawValue)").background(Color.green)
                }.background(Color.red)
                List {
                    Text("something")
                }
                
                
                //saves empty space
//                Spacer()
                    
                }.navigationBarTitle(Text("\(tracker.name) - Measurements History"), displayMode: .inline)
            
        }
            
        
    }
    
}




struct TargetView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
