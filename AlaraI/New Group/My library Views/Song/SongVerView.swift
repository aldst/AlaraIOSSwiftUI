//
//  SongVerView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//
/*
import SwiftUI

struct SongVerView: View {
    var songs: [Song] = []
    
    var body: some View {
        NavigationView{
            List(songs) { song in
                NavigationLink(destination: SongDetailView()){
                    Image(song.image)
                        .resizable()
                        //.cornerRadius(8)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 4))
                        .frame(width: 100, height: 80)
                        
                    VStack (alignment: .leading) {
                        Text(song.name)
                        Text(song.autor)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                     }
                    Spacer()
                }
            }
        .navigationBarTitle(Text("Canciones"))
        }
    }
}

#if DEBUG
struct SongVerView_Previews: PreviewProvider {
    static var previews: some View {
        SongVerView(songs: songData)
    }
}
#endif
*/
