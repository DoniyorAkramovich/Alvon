//
//  SignUpPushing.swift
//  Alvon
//
//  Created by Doniyor on 14/06/22.
//

import SwiftUI

struct SignUpPushing: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var address: String = ""
    @State var password: String = ""
    
    @State var backHomePage: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField(("Firstname"), text: $firstName)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray .opacity(0.1))
                .cornerRadius(25)
            
            TextField(("Lastname"), text: $lastName)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray .opacity(0.1))
                .cornerRadius(25)
            
            TextField(("Email"), text: $email)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray .opacity(0.1))
                .cornerRadius(25)
            
            TextField(("Address"), text: $address)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray .opacity(0.1))
                .cornerRadius(25)
            
            SecureField(("Password"), text: $password)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray .opacity(0.1))
                .cornerRadius(25)
            
            Button {
                
            } label: {
                HStack {
                    Spacer()
                    Text("Sign Up")
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
                Text("Already have an account?")
                    .foregroundColor(.blue)
                Button {
                    backHomePage = true
                    presentation.wrappedValue.dismiss()
                } label: {
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
            }
        }
        .padding()
    }
}


struct SignUpPushing_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPushing()
    }
}
