//
//  InsertAlert.swift
//  MeasureTracker
//
//  Created by Gina on 14.7.2020.
//  Copyright © 2020 Gina. All rights reserved.
//

import SwiftUI

struct InsertAlert: View {
    @Binding var trackers: [Tracker]
    @Binding var showAdInsertion: Bool
    @State private var newTrackerName = ""
    var body: some View {
        HStack {
            VStack {
                Text("Write the name of the tracker")
                    .padding(20)
                    .shadow(radius: 0.3)
                    .font(.headline)
                TextField("tracker name", text: $newTrackerName)
                    .padding(5)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    let newTracker = Tracker(name: self.newTrackerName, measurements: [Measurement]())
                    self.trackers.append(newTracker)
                    self.showAdInsertion = false
                }) {Text("Insert")}
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.bottom,10)
            }
            .background(Color.yellow)
            .cornerRadius(5)
            
        }
        .padding(50)
        .shadow(radius: 1)
    }
}

