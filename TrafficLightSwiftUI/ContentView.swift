//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Alexey Mefodyev on 28.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCounter = 0
    
    var body: some View {
        VStack {
            TrafficLightCircles()
            Button(action: {
                numberOfTaps()
                TrafficLightCircles().changeColor(taps: tapCounter)
            }) {
                Text("START")
            }
            Spacer()
        }
    }
    private func numberOfTaps() {
        tapCounter += 1
        
        if tapCounter > 3 {
            tapCounter = 0
        }
        print(tapCounter)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
