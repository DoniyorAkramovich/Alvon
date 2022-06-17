//
//  HomeSecond.swift
//  Alvon
//
//  Created by Doniyor on 17/06/22.
//

import SwiftUI

struct HomeSecond: View {
    
    @EnvironmentObject  var status: Status
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                HStack {
                    Button {
                        UserDefaults.standard.removeObject(forKey: "userid")
                        status.listen()
                    } label: {
                        HStack {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title2)
                            Text("Log Out")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                    }
                }
                .foregroundColor(.orange)
                
                .navigationBarItems(leading: Image(systemName: "camera.fill"),
                                    trailing: Image(systemName: "paperplane.fill"))
                .foregroundColor(Color.blue)
                .navigationBarTitle("Instagram II", displayMode: .inline)
                
                Text("This Home Page")
                    .font(.headline)
                    .foregroundColor(.blue)
                Text("Style is Observable Object")
                    .font(.headline)
                    .foregroundColor(.blue)
                
            }
        }
    }
}

struct HomeSecond_Previews: PreviewProvider {
    static var previews: some View {
        HomeSecond()
    }
}
