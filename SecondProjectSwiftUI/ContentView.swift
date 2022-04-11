//
//  ContentView.swift
//  SecondProjectSwiftUI
//
//  Created by Yan Alejandro on 11/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            LinearGradient (gradient: Gradient (colors: [Color.init(red: 0.026, green: 0.908, blue: 0.934), Color.init(red: 0.03, green: 0.015, blue: 0.516)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            Circle()
                .fill(RadialGradient(gradient: .init(colors: [Color.init(red: 0.026, green: 0.908, blue: 0.934), Color.init(hue: 0.67, saturation: 0.985, brightness: 0.35)]), center: .center, startRadius: 10, endRadius: 200))
                .frame(width: 300, height: 300, alignment: .center)
            
            Image(systemName: "swift")
                .font(.system(size: 200, weight: .ultraLight))
                .foregroundColor(Color.black)
                .overlay(IrmandadeSwift())
        }
    }
}


struct IrmandadeSwift: View {
    var body: some View {
        VStack {
            Text("Irmandade Swift")
                .frame (width: 400, height: 60, alignment: .center)
                .foregroundColor(Color.white)
                .font(.system(size: 45, weight: .regular))
                .background(LinearGradient (gradient: Gradient (colors: [Color.init(hue: 0.67, saturation: 0.985, brightness: 0.35), Color.init(red: 0.03, green: 0.015, blue: 0.516)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
                .cornerRadius(50)
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
