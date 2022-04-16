//
//  BatteryView.swift
//  MaskingStuff
//
//  Created by Federico on 16/04/2022.
//

import SwiftUI

struct BatteryView: View {
    @Binding var progress: Double
    let fill: Color
    let outline: Color
    
    var body: some View {
            ZStack {
                Image(systemName: "battery.0")
                    .resizable()
                    .scaledToFit()
                    .font(.headline.weight(.ultraLight))
                    .foregroundColor(outline)
                    .background(
                        Rectangle()
                            .fill(fill)
                            .scaleEffect(x: progress, y: 1, anchor: .leading)
                    )
                    .mask(
                        Image(systemName: "battery.100")
                            .resizable()
                            .font(.headline.weight(.ultraLight))
                            .scaledToFit()
                    )
                    .frame(width: 200)
                    .padding()
                
                Text("\(Int(self.progress * 100))%")
                    .foregroundColor(.white)
                
            }
        }
}

struct BatteryView_Previews: PreviewProvider {
    static var previews: some View {
        BatteryView(progress: .constant(0.7), fill: .green, outline: .black)
    }
}
