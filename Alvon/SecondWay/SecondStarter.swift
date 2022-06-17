//
//  SecondStarter.swift
//  Alvon
//
//  Created by Doniyor on 17/06/22.
//

import SwiftUI

struct SecondStarter: View {
    @EnvironmentObject var status: Status
    
    var body: some View {
        VStack {
            if self.status.usereid != nil {
                HomeSecond()
            } else {
                SignInPushing()
            }
        }
        .onAppear {
            status.listen()
        }
    }
}

struct SecondStarter_Previews: PreviewProvider {
    static var previews: some View {
        SecondStarter()
    }
}
