//
//  SearchView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var observed = artistObserver()
    @ObservedObject var postsobserver = Postobserver()
    @State var show = false
    @State var user = ""
    @State var url = ""
    
    var body: some View {
        NavigationView{
            List {
                ForEach(observed.artist) {_ in
                    
                    NavigationLink(destination: Text("Detalles")){
                        HStack(alignment: .center, spacing: 1.0) {
                            Image("losPrisioneros")
                                .resizable()
                                //.cornerRadius(8)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.green, lineWidth: 4))
                                .frame(width: 100, height: 80)
                            
                            VStack (alignment: .leading) {
                               Text("Placeholder")
                                    .font(.headline)
                            }
                            Spacer()
                        }
                    }
                }
            }
        }.padding(.leading)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
