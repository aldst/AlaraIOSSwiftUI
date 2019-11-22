//
//  dataTypes.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/4/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import Foundation
import SwiftUI

// se crean los datos de las clases
struct datatype1 : Identifiable {
    
    var id : String
    var name : String
    var image : String
    var comments : String
    var likes : String
    
}

struct artistData : Identifiable {
    
    var id : String
    var name : String
    var image : String
    var phone: String
}

struct songData : Identifiable {
    
    var id : String
    var name : String
    var image : String
    var autor : String
    var song : String
}

struct albumData : Identifiable{
    
    var id : String
    var name : String
    var image : String
    var autor : String
}

struct songHeroku : Identifiable{
    
    var id : Int
    var nombre : String
    var fecha : String
    var contenido : String
    var url : String
    var estadoPublico : Bool
    var generoId : Int
    var artistaId : Int
    var discoId : Int
}
