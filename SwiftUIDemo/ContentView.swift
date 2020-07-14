//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Thien Chu on 6/12/20.
//  Copyright © 2020 Thien Chu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var red: Double
    @State var green: Double
    @State var blue: Double
    
    var body: some View {
        
        VStack {
            Rectangle()
                .foregroundColor(Color(red: red, green: green, blue: blue))
                .modifier(VulcanModifier())
            
            VStack {
                ColorSlider(value: $red, textColor: .red)
                ColorSlider(value: $green, textColor: .green)
                ColorSlider(value: $blue, textColor: .blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(red: 0.5, green: 0.5, blue: 0.5)
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("0")
                .foregroundColor(textColor)
            Slider(value: $value)
            Text("255")
                .foregroundColor(textColor)
        }
        .padding()
        .frame(height: 50)
    }
}

struct VulcanModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(10)
            .padding()
    }
}
