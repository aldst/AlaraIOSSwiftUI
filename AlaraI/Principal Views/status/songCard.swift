//
//  songCard.swift
//  AlaraI
//
//  Created by Developer on 11/7/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct songCard : View{
    
    var image = ""
    var user = ""
    var autor = ""
    var song = ""
    

    
    var body : some View {
        
        HStack(){
            VStack(alignment: .leading) {
                AnimatedImage(url: URL(string: image))
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                
            }
            
            VStack(alignment: .leading) {
                Text(user)
                    .font(.headline)
                    .fontWeight(.semibold)
                Text(autor)
                    .font(.subheadline)
            }
        }
    }
}


