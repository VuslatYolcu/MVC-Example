//
//  User.swift
//  DesignPattern
//
//  Created by Vuslat Yolcu on 7.04.2023.
//

import Foundation

struct User {
    let firstName: String
    let lastName: String
    let email: String
    let age: Int
    let location: Location
}

struct Location {
    let lat: Double
    let lng: Double
}
