//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Michael Schmidt on 9/23/22.
//

import SwiftUI

struct MapAnnotationView: View {
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }//: ZSTACK
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever().repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var parks: [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: parks[0])
    }
}
