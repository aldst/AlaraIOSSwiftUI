//
//  AlbumView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct AlbumView: View {
    
    @ObservedObject var albumobserved = albumObserver()
    @State var show = false
    @State var user = ""
    @State var url = ""
    @State var autor = ""
    
    var body: some View {
        
        //ScrollView(.vertical, showsIndicators: false){
            VStack {
                if(albumobserved.album.isEmpty){
                    Spacer()
                    Text("No se han registrado albumes")
                        .fontWeight(.heavy)
                        .padding(.top)
                    Spacer()
                    
                }else{
                    List(albumobserved.album) {i in
                        NavigationLink(destination: AlbumDetail(imName: i.image, user: i.name, autor: i.autor)) {
                                
                                albumCard(user: i.name, image: i.image, id: i.id, autor: i.autor)
                            }
                        }
                    }
                }
        //}.padding(.leading).sheet(isPresented: $show){
          //  albumView(url: self.url, name: self.user)
        //}
    }
    
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView()
    }
}
