//
//  dataTypes.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/4/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import Foundation
import SwiftUI

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
    var song : String
}

struct albumData : Identifiable{
    
    var id : String
    var name : String
    var image : String
    var autor : String
}
