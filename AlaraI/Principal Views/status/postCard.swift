//
//  postCard.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/4/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
import Firebase
import FirebaseFirestore

struct postCard : View {
    
    var user = ""
    var image = ""
    var id = ""
    var likes = ""
    var comments = ""
    
    var body : some View {
        
        VStack(alignment: .leading, content: {

            HStack{
                AnimatedImage(url: URL(string: image))
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                Text(user)
                Spacer()
                Button(action: {
                    
                }) {
                    Image("luchoQuequezana")
                        .resizable()
                        .frame(width: 15, height: 15)
                }
            }
            
            AnimatedImage(url: URL(string: image))
                .resizable()
                .frame(height: 350)
            
            HStack{
                Button(action: {
                    
                }) {
                    Image("magnifyingglass")
                        .resizable()
                        .frame(width: 26, height: 26)
                }
                
                Button(action: {
                    
                    // update likes
                    
                    let db = Firestore.firestore()
                    
                    let like = Int.init(self.likes)!
                    db.collection("posts").document(self.id).updateData(["likes" : "\(like + 1)"]) { (err) in
                        
                        if err != nil {
                            
                            print((err)!)
                            return
                        }
                        print("Actualizado...")
                    }
                }) {
                    Image("heart.fill")
                        .resizable()
                        .frame(width: 26, height: 26)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("luchoQuequezana")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }.padding(.top, 8)
            
            Text("\(likes) likes")
                .padding(.top, 8)
            Text("View all \(comments) Comments")
            
        }).padding(8)
    }
}
