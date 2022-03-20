//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    var imageName: String
    var itemName: String
    var quantity: String
    
    var body: some View {
        HStack{
            Text(itemName)
                //.padding(50)
                //.position()
            
    
            Image(imageName)
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .position(x: 150, y: 25)
                .padding(5)
                
            
        }
    }
}

