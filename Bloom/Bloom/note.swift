//
//  note.swift
//  Bloom
//
//  Created by Meghna Vyas on 13/04/24.
//
import Foundation
import UIKit
import SwiftUI



struct Note: Identifiable {
    let id: UUID = UUID()
    var title: String
    var image: String
    var people: [User] = []
    var color: Color = .red
}



let users: [User] = [
    
    User(name: "Jenny Li", image: "1"),
    User(name: "Wendy Porsche", image: "2"),
    User(name: "Wendy Porsche", image: "3"),
    User(name: "Paulina Jay", image: "4"),
    User(name: "Wendy Porsche", image: "5"),
    User(name: "Wendy Porsche", image: "6"),

]


let notes: Array<Note> = [

    Note(
        title: "Brain Strom",
        image: "1",
        people: [ users[5], users[0] ],
        color: .rang
    ),
    Note(
        title: "Travel",
        image: "2",
        people: [ users[3], users[1] ],
        color: .blue
    ),
    Note(
        title: "Interest",
        image: "3",
        people: [ users[4], users[1], users[3] ],
        color: .orange
    ),
    Note(
        title: "Gratitude",
        image: "4",
        people: [ users[1], users[0], users[3] ],
        color: .red
    ),
    Note(
        title: "Peace",
        image: "5",
        people: [ users[4], users[2] ],
        color: .brown
    ),
    Note(
        title: "Motivation",
        image: "6",
        people: [ users[3] ],
        color: .rang
    ),
    Note(
        title: "Not Good Today",
        image: "7",
        people: [ users[0], users[3] ],
        color: .gray
    ),

]
