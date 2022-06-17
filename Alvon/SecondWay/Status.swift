//
//  Starter.swift
//  Alvon
//
//  Created by Doniyor on 17/06/22.
//

import Foundation
import Combine

class Status: ObservableObject {
    
    var didChange = PassthroughSubject<Status, Never>()
    
    @Published var usereid: String? { didSet { self.didChange.send(self) } }
    
    func listen() {
        if let usereid = UserDefaults.standard.string(forKey: "userid") {
            self.usereid = usereid
        } else {
            self.usereid = nil
        }
    }
//    func listen () {
//        if let userid = UserDefaults.standard.string(forKey: "userid") {
//            self.userid = userid
//        } else {
//            self.userid = nil
//        }
//    }
}
