//
//  AlvonApp.swift
//  Alvon
//
//  Created by Doniyor on 14/06/22.
//

import SwiftUI

@main
struct AlvonApp: App {
    var body: some Scene {
        WindowGroup {
            SecondStarter()
                .environmentObject(Status())
        }
    }
}
