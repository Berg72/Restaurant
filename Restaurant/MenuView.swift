//
//  MenuView.swift
//  Restaurant
//
//  Created by Mark bergeson on 2/20/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems) { item in
            
           MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear {
//            call for the data
            menuItems = dataService.getData()
        }
    }
}

#Preview {
    MenuView()
}

