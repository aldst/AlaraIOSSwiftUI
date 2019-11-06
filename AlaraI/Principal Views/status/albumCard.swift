//
//  albumCard.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/5/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct albumCard : View{
    
    var user = ""
    var image = ""
    var id = ""
    var autor = ""
    
    
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
