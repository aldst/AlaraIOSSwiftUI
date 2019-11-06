//
//  ArtistHorView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//
/*
import SwiftUI

struct ArtistHorView: View {
    
    var artists: [Artist] = []
    
    var body: some View {
        /*
        NavigationView {
            List {
                VStack(alignment: .leading) {
                    Text("Trending").font(.headline).padding(.leading, 16)
                    ScrollView(showHorizontalIndicador: false) {
                        HStack {
                            ForEach(artists.count){ artist in
                                NavigationLink(destination: ArtistDetailView(artist: artist)){
                                    ArtistView()
                                }
                            }
                                
                        }
                    }
                }
            }
        }
        */
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading){
                Text("Escuchados recientemente")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(0..<4) {i in
                            VStack{
                                Image("\(i)")
                                    .resizable()
                                .frame(width: 80, height: 80)
                                    .overlay(Circle().stroke(lineWidth: 3).fill(Color.red))
                                .padding(6)
                                
                                Text("User")
                                Spacer()
                                Button(action: {
                                    
                                }) {
                                    Image("menu").resizable().frame(width: 25, height: 25).foregroundColor(.white)
                                }
                                Image("brunoMars").resizable().frame(height: 300).padding([.top,.bottom])
                            }
                        }
                    }
                }
            }
        }
        
    }
}
/*
struct ArtistView: View {
    
    let artist: Artist
    
    var body : some View {
        
        NavigationLink(destination: ArtistDetailView(artist: artist)) {
            VStack(alignment: .leading) {
                Image(artist.image)
                    //.cornerRadius(8)
                    .resizable()
                    .frame(width: 100, height: 80)
                Text(artist.name).lineLimit(nil)
                    .padding(.leading, 0)
            }.frame(width: 110, height: 170)
        }
    }
}
*/
#if DEBUG
struct ArtistHorView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistHorView(artists: artistData)
    }
}
#endif
*/
