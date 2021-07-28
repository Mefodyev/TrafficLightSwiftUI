//
//  TrafficLightCircles.swift
//  TrafficLightSwiftUI
//
//  Created by Alexey Mefodyev on 28.07.2021.
//

import SwiftUI

struct TrafficLightCircles: View {
    
    @State var redAlpha = 1.0
    @State var yellowAlpha = 1.0
    @State var greenAlpha = 1.0
    
    func changeColor(taps: Int) {
        
        switch taps {
        case 1:
            redAlpha = 1.0
            yellowAlpha = 0.25
            greenAlpha = 0.25
            
        case 2:
            redAlpha = 0.25
            yellowAlpha = 1.0
            greenAlpha = 0.25
        case 3:
            redAlpha = 0.25
            yellowAlpha = 0.25
            greenAlpha = 1.0
        default:
            print("Oops!")
        }
    }
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 125, height: 125)
                .foregroundColor(
                    .red
                    .opacity(redAlpha)
                )
            
            Circle()
                .frame(width: 125, height: 125)
                .foregroundColor(
                    .yellow
                    .opacity(yellowAlpha)
                )
            
            Circle()
                .frame(width: 125, height: 125)
                .foregroundColor(
                    .green
                    .opacity(greenAlpha)
                )
    }
}


struct TrafficLightCircles_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCircles()
    }
}
}
