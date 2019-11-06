//
//  HomeView.swift
//  AlaraI
//
//  Created by alvaro Soto on 10/30/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseFirestore
import SDWebImageSwiftUI

struct HomeView: View {
    
    @ObservedObject var artistobserved = artistObserver()
    @ObservedObject var postsobserver = Postobserver()
    @State var show = false
    @State var user = ""
    @State var url = ""
    
    var body: some View {

        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(artistobserved.artist){ i in
                            StatusCard(imName: i.image, user: i.name, show: self.$show, user1: self.$user, url: self.$url)
                                .padding(.leading)
                        }
                    }.animation(.spring())
                }
                
                if postsobserver.posts.isEmpty{
                    Text("No Posts")
                        .fontWeight(.heavy)
                }else{
                    ForEach(postsobserver.posts){ i in

                        postCard(user: i.name, image: i.image, id: i.id, likes: i.likes, comments: i.comments)
                    }
                }
            }
        }.sheet(isPresented: $show){
            statusView(url: self.url, name: self.user)
        }
    }
}

struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
