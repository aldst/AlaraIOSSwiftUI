//
//  songDetail.swift
//  AlaraI
//
//  Created by Developer on 11/7/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct SongDetail: View {
    
    var imName = ""
    var user = "" // name of the song
    var autor = ""
    var song = ""
    
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
                Text("Autor")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Text(autor)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
            }
            Spacer()
            Spacer()
        }
        
    }
}
