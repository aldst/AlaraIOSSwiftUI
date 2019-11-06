//
//  ArtistView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseFirestore
import SDWebImageSwiftUI

struct ArtistView: View {
    
    @ObservedObject var artistobserved = artistObserver()
    @State var show = false
    @State var user = ""
    @State var url = ""
    @State var phone = ""
    
    var body: some View {
        
        VStack {
        if(artistobserved.artist.isEmpty){
            Spacer()
            Text("No se han registrado cantantes")
                .fontWeight(.heavy)
                .padding(.top)
            Spacer()
            
        }else{
            List(artistobserved.artist) {i in
                NavigationLink(destination: ArtistDetail(imName: i.image, user: i.name, phone: i.phone)) {
                        
                        artistCard(imName: i.image, user: i.name, telefono: i.phone)
                    }
                }
            }
        }
    }
}


struct ArtistView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistView()
    }
}
