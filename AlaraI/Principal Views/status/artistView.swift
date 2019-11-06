//
//  artistView.swift
//  AlaraI
//
//  Created by Developer on 11/6/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct artistiew : View {
    
    var url = ""
    var name = ""
    var autor = ""
    
    var body : some View {
        
        VStack(alignment: .leading) {
            AnimatedImage(url: URL(string: url))
                .resizable()
            
            VStack(alignment: .leading) {
                    Text(name)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .padding()
                    Text(autor)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .padding()
            }
        }
    }
}
