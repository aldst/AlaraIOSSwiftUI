//
//  MyLibraryView.swift
//  AlaraI
//
//  Created by alvaro Soto on 10/30/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI

struct MyLibraryView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.gray
    }
    
    @State var selected = 4
    
    var body: some View {

        TabView{
            NavigationView{
                SongView().navigationBarTitle("Canciones")

            }.tabItem {
                VStack {
                    Image(systemName:"music.mic")
                        .font(.title)
                    Text("Canciones")
                }
            }.tag(4)
            
            NavigationView{
                ArtistView().navigationBarTitle("Cantantes")
            }.tabItem {
                VStack {
                    Image(systemName:"person.fill")
                            .font(.title)
                    Text("Cantantes")
                }
            }.tag(5)
            
            NavigationView{
                AlbumView().navigationBarTitle("Albumes")
            }.tabItem {
                VStack {
                    Image(systemName:"folder.fill")
                        .font(.title)
                    Text("Albumes")
                }
            }.tag(6)
        }.accentColor(Color.green)
    }
}

#if DEBUG
struct MyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MyLibraryView()
    }
}
#endif
