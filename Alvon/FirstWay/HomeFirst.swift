//
//  HomeFirst.swift
//  Alvon
//
//  Created by Doniyor on 16/06/22.
//

import SwiftUI

struct HomeFirst: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                HStack {
                    Button {
                        UserDefaults.standard.set(false, forKey: "status")
                        NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
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
                .navigationBarTitle("Instagram I", displayMode: .inline)
                
                Text("This Home Page")
                    .font(.headline)
                    .foregroundColor(.blue)
                Text("Style is Notification Center")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
        }
    }
}

struct HomeFirst_Previews: PreviewProvider {
    static var previews: some View {
        HomeFirst()
    }
}
