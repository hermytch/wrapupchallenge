//
//  Model.swift
//  WrapUpChallenge
//
//  Created by Lukas Herman on 05.04.2022.
//

import Foundation
struct Page:Decodable, Identifiable {
    var id:Int
    var title:String
    var url:String
}
