//
//  tabBarIView.swift
//  AlaraI
//
//  Created by alvaro Soto on 10/30/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI

struct tabBarIView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.gray
    }
    
    @State var selected = 1
    
    var body: some View {
        
        TabView{
            NavigationView{
                HomeView().navigationBarTitle("Alara")

            }.tabItem {
                VStack {
                    Image(systemName:"house.fill")
                        .font(.title)
                    Text("Inicio")
                }
            }.tag(1)
            
            NavigationView{
                SearchView().navigationBarTitle("Buscar")
            }.tabItem {
                VStack {
                    Image(systemName:"magnifyingglass")
                            .font(.title)
                    Text("Buscar")
                }
            }.tag(2)
            
            MyLibraryView()//.navigationBarTitle("Mi libreria")
                .tabItem {
                    VStack {
                        Image(systemName:"book.fill")
                            .font(.title)
                        Text("Mi libreria")
                    }
                }.tag(3)
            }.accentColor(Color.green)
        
    }
}

struct tabBarIView_Previews: PreviewProvider {
    static var previews: some View {
        tabBarIView()
    }
}
