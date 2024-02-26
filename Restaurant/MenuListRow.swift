//
//  MenuListRow.swift
//  Menu
//
//  Created by Mark bergeson on 2/2/24.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50.0)
                .cornerRadius(10.0)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.price)
            
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.darkGray).opacity(0.1))
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Text Item", price: "$3.99", imageName: "tako-sushi"))
}
