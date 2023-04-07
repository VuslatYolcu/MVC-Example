//
//  NetworkService.swift
//  DesignPattern
//
//  Created by Vuslat Yolcu on 7.04.2023.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    private init() { }
    
    private var user: User?
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if email == "test@test.com" && password == "password" {
                    self.user = User(firstName: "Vuslat", lastName: "Yolcu", email: "test@test.com", age: 26, location: Location(lat: 2.343, lng: -6.3243))
                    completion(true)
                } else {
                    self.user = nil
                    completion(false)
                }
                
            }
            
        }
    }
    
    func getLoggedInUser() -> User? {
        return user
    }
}
