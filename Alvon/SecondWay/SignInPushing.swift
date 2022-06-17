//
//  SignInPushing.swift
//  Alvon
//
//  Created by Doniyor on 14/06/22.
//

import SwiftUI

struct SignInPushing: View {
    
    @EnvironmentObject  var status: Status
    @State var email: String = ""
    @State var password: String = ""
    @State var nextPage: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Image("face")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .clipShape(
                        Circle()
                    )
                    .padding()
        
                TextField(("User ID"), text: $email)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(Color.gray .opacity(0.1))
                    .cornerRadius(25)
                
                SecureField(("User password"), text: $password)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(Color.gray .opacity(0.1))
                    .cornerRadius(25)
                
                Button {
                    UserDefaults.standard.set("doniyor.akramovich@gmail.com", forKey: "userid")
                    status.listen()
                } label: {
                    HStack {
                        Spacer()
                        Text("Sign In")
                            .fontWeight(.semibold)
                            .frame(height: 45)
                            
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(25)
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.blue)
                    Button {
                        nextPage = true
                    } label: {
                        NavigationLink(destination: SignUpPushing()) {
                            Text("Sign Up")
                                .fontWeight(.semibold)
                        }
                    }
                }
            }
            .padding()
            
            .navigationTitle("Instagram")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct SignInPushing_Previews: PreviewProvider {
    static var previews: some View {
        SignInPushing()
    }
}
