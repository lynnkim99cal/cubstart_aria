//
//  LandingPageView.swift
//  HoldingPaws
//
//  Created by Aria Chen on 2022/4/24.
//

import Foundation
import SwiftUI

struct LandingPageView: View {
    
    @State var isActive:Bool = false
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
        
        var body: some View {
            VStack {
                
                if self.isActive {
                    
                    ContentView()
                } else {
                    
                    Text("HoldingPaws")
                        .font(Font.largeTitle)
                        .bold()
                        .foregroundColor(skyBlue)
                    Logo()
//                        .background(
//                            Image("background")
//                            .resizable()
//
//                            .scaledToFill())
//
                        
                            //.aspectRatio(contentMode: .fill))
                }
                   
            }
            
            .onAppear {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    struct Logo : View {
        var body: some View {
            return Image("paw")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom, 75)
        }
    }

}
