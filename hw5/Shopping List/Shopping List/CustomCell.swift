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
    
            Image(imageName)
                .resizable()
                .frame(width: 50.0, height: 50.0, alignment:.trailing)
                .padding(10)
                
            
        }
    }
}

