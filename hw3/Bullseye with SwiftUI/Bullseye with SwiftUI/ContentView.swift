//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//


import SwiftUI

struct ContentView: View {
    struct ContentView_Previews: PreviewProvider{
        static var previews: some View{
            ContentView()
        }
    }
    @State var SliderVal: Double = 0
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                .padding(.top, 20)
                .padding(.bottom, 20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
            }
            Text("Move the slider to:")
            Text("25")
            
            
            Slider(value: $SliderVal, in: 0...100)
            
            
            
            Spacer()
        }
    }
}
