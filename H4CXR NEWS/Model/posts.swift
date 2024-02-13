//
//  posts.swift
//  H4CXR NEWS
//
//  Created by Tejash Singh on 07/02/24.
//

import Foundation

struct Result :Codable{
    let hits:[Post]
}

struct Post:Codable,Identifiable{
    var id: Int{
        return story_id
    }
    let title:String
    let points:Int
    let url:String?
    let story_id:Int
}


