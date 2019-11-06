//
//  ArtistVerView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//
/*
import SwiftUI
import Firebase
import FirebaseFirestore

struct ArtistVerView: View {
    var artists: [Artist] = []
    
    var body: some View {
        
        NavigationView{
            List(artists) { artist in
                
                ArtistRow(artist: artist)
            }
        .navigationBarTitle(Text("Cantantes"))
        }
        
        //artistView()
    }
}
#if DEBUG
struct ArtistVerView_Previews: PreviewProvider {
    static var previews: some View {
        //ArtistVerView()
        ArtistVerView(artists: artistData)
    }
}
#endif

struct ArtistRow: View {
    
    let artist: Artist
    
    var body: some View {
        NavigationLink(destination: ArtistDetailView(artist: artist)){
            Image(artist.image)
                .resizable()
                //.cornerRadius(8)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .frame(width: 100, height: 80)
            
            VStack (alignment: .leading) {
                Text(artist.name)
            }
            Spacer()
        }
    }
}
*/
