//
//  user.swift
//  Bloom
//
//  Created by Meghna Vyas on 13/04/24.
//

import Foundation

struct User: Identifiable {
    let id: UUID = UUID()
    var name: String
    var image: String
}
