//
//  PostData.swift
//  H4X0R News Personal
//
//  Created by Akash Arafat on 2023/10/20.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}

