//
//  ContentView.swift
//  Restaurant
//
//  Created by Mark bergeson on 2/20/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        
        TabView {
            
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                    
                }
            
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.square.fill")
                        Text("About")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo.fill")
                        Text("Gallery")
                    }
                    
                }
        }
    }
}

#Preview {
    MainView()
}
