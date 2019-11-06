//
//  ArtistDetailView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//
/*
import SwiftUI

struct ArtistDetailView: View {
    
    let artist: Artist
    @State private var zoomed = false
    
    var body: some View {
        
        VStack {
            Image(artist.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            .navigationBarTitle(Text(artist.name),displayMode: .inline)
             /*
                .tapAction {
                    withAnimation { self.zoomed.toggle()}
            }
            */
            VStack(alignment: .leading){
                
                Text(artist.name)
                    .font(.title)
                
                HStack(alignment: .top) {
                    
                    Text(artist.name)
                        .font(.subheadline)
                    Spacer()
                    Text(artist.phone)
                        .font(.subheadline)
                    /*
                    guard let numberString = sender.titleLabel?.text, let url
                        = URL(string: "telprompt://\(numerString)")
                        else {
                            return
                    }
                    UIApplication.shared.open(url)
 */
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(artist.name), displayMode: .inline)
        
    }
}

#if DEBUG
struct ArtistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {ArtistDetailView(artist: artistData[0])}
    }
}
#endif
*/
