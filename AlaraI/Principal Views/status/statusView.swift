//
//  statusView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/4/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct statusView : View {
    
    var url = ""
    var name = ""
    
    var body : some View {
        
        ZStack {
            AnimatedImage(url: URL(string: url))
                .resizable()
            
            VStack {
                HStack {
                    Text(name)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .padding()
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

