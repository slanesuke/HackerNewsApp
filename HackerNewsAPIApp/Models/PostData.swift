//
//  PostData.swift
//  HackerNewsAPIApp
//
//  Created by Ian Slane on 4/26/23.
//
// The blueprint that stores the fields from the API response in an object

import Foundation

struct results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
