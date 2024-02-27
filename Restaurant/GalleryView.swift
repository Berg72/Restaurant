//
//  GalleryView.swift
//  Restaurant
//
//  Created by Mark bergeson on 2/20/24.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    var dataService = DataService()
    
    var body: some View {
            
            VStack(alignment: .leading) {
                Text("Gallery")
                    .font(.largeTitle)
                    .bold()
                
                GeometryReader { proxy in
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(spacing: 10.0),
                                        GridItem(spacing: 10.0),
                                        GridItem(spacing: 10.0)],
                                        spacing: 10.0) {
                        ForEach(photoData, id: \.self) { p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                        }
                    }
                    }
                }
            }.padding(.horizontal)
            .onAppear {
                photoData = dataService.getPhotos()
            
        }
    }
}

#Preview {
    GalleryView()
}
