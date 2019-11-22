//
//  SearchView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var songobserved = songObserver()
    
    @State var show = false
    @State var user = ""
    @State var url = ""
    @State var autor = ""
    @State var song = ""
    
    var body: some View {
        
        VStack {
        if(songobserved.song.isEmpty){
            Spacer()
            Text("No se han registrado canciones")
                .fontWeight(.heavy)
                .padding(.top)
            Spacer()
            
        }else{
            List(songobserved.song) {i in
                NavigationLink(destination: SongDetail(imName: i.image, user: i.name, autor: i.autor, song: i.song)) {
                        
                    songCard(image: i.image, user: i.name, autor: i.autor, song: i.song)
                    }
                }
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
