//
//  ContentView.swift
//  MeasureTracker
//
//  Created by Gina on 12.7.2020.
//  Copyright © 2020 Gina. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var newTrackerName = ""
    
    @State private var showAdInsertion = false
    
    @State var trackers: [Tracker] = [Tracker(name: "Arm", measurements: [Measurement]()),
                               Tracker(name: "Chest", measurements: [Measurement]()),
                                Tracker(name: "Hips", measurements: [Measurement]())]
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack {
                    HStack{
                        List (trackers ) { tracker in
                            NavigationLink(destination: TargetView(tracker: tracker) ) {
                                Text(tracker.name)
                                Spacer()
                                Text("104")
                                Text("cm") .padding(.trailing, 40)
                                
                            }
                        }
                        .onAppear {
                            UITableView.appearance().tableFooterView = UIView()
                        }
                    }
                    Button(action: {
                        self.showAdInsertion = true
                    }) {
                        Text(verbatim: "Add")
                        .frame(width: 55, height: 30)
                        .background(Color.yellow)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        .padding(.bottom, 10)
                        .font(Font.headline.weight(.semibold))
                        .shadow(radius: 0.3)
                        
                    }
                    .navigationBarTitle("Body Tracker", displayMode: .large)
                 
                    
                }
                if showAdInsertion {
                    InsertAlert(trackers: $trackers, showAdInsertion: $showAdInsertion)
                }
            }
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

