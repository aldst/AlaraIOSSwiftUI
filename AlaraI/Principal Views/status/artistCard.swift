//
//  artistCard.swift
//  AlaraI
//
//  Created by Developer on 11/6/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct artistCard : View{
    
    var imName = ""
    var user = ""
    var telefono = ""
    

    
    var body : some View {
        
        HStack {
            AnimatedImage(url: URL(string: imName))
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            VStack() {
                Text(user)
                    .font(.headline)
                    .fontWeight(.semibold)
                //Text(telefono)
                //    .font(.subheadline)
            }
        }
    }
}

