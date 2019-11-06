//
//  AlbumVerView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//
/*
import SwiftUI

struct AlbumVerView: View {
    var albums: [Album] = []
    var body: some View {
        
        NavigationView{
            List(albums) { album in
                NavigationLink(destination: AlbumDetailView(album: album)){
                    Image(album.image)
                        .resizable()
                        //.cornerRadius(8)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 4))
                        .frame(width: 100, height: 80)
                        
                    VStack (alignment: .leading) {
                        Text(album.name)
                     }
                    Spacer()
                }
            }
        .navigationBarTitle(Text("Albumes"))
        }
        
    }
}

#if DEBUG
struct AlbumVerView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumVerView(albums: albumData)
    }
}
#endif

*/
