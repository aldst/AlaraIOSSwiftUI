//
//  ArtistDetail.swift
//  AlaraI
//
//  Created by Developer on 11/6/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct ArtistDetail: View {
    
    var imName = ""
    var user = ""
    var phone = ""
    
    
    var body: some View {
        
        VStack {
            AnimatedImage(url: URL(string: imName))
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            Text(user)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            HStack() {
                Spacer()
                Text("Telefono")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Text(phone)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
            }
            Spacer()
            Spacer()
        }
        
    }
}

