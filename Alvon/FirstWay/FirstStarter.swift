//
//  FirstStarter.swift
//  Alvon
//
//  Created by Doniyor on 16/06/22.
//

import SwiftUI

struct FirstStarter: View {
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    
    var body: some View {
        VStack {
            if self.status {
                HomeFirst()
            } else {
                SignInPresent()
            }
        }
        .onAppear {
            let name = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main) { (_) in
                print("Call NotificationCenter")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct FirstStarter_Previews: PreviewProvider {
    static var previews: some View {
        FirstStarter()
    }
}
