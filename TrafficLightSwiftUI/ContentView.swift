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
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray, Color.pink]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            
            VStack {
                TrafficLightCircles()
                    .padding(.bottom, 50)
                    
                    Button(
                        action: {
                        colorChanger()
                        }
                    )
                    {
                        Text("START")
                    }
                    .font(.title)
                    
                
                
                
                Spacer()
            }.padding()
        }
    }
    
    
    private func numberOfTaps() -> Int {
        tapCounter += 1
        
        if tapCounter > 3 {
            tapCounter = 0
        }
        print(tapCounter)
        return tapCounter
    }
    
    private func colorChanger() {
        TrafficLightCircles().changeColor(taps: numberOfTaps())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
