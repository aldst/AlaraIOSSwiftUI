//
//  AlbumDetailView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//
/*
import SwiftUI

struct AlbumDetailView: View {
    
    let album: Album
    
    var body: some View {
        
        VStack {
            Image(album.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            .navigationBarTitle(Text(album.name),displayMode: .inline)
             /*
                .tapAction {
                    withAnimation { self.zoomed.toggle()}
            }
            */
            VStack(alignment: .leading){
                
                Text(album.name)
                    .font(.title)
                
                HStack(alignment: .top) {
                    
                    Text(album.name)
                        .font(.subheadline)
                    Spacer()
                    Text(album.autor)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(album.name), displayMode: .inline)
        
    }
}

#if DEBUG
struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{AlbumDetailView(album: albumData[0])}
    }
}
#endif
*/
