//
//  TextFieldTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct TextFieldTest: View {
    
    @State var username : String = ""
    @State var password : String = ""
    
    var body: some View {
        
        VStack(spacing: 15){
            
            Text("Your username is \(username)!")
            Text("Your password is \(password)!")
            
            HStack {
                Text("名字:")
                TextField("User Name", text: $username, onEditingChanged: { (value) in
                    
                    print("onEditingChanged:\(self.username)")
                    
                }) {
                    
                    print("onCommit:\(self.username)")
                    
                    }.textFieldStyle(RoundedBorderTextFieldStyle()).padding(10).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
            
            HStack {
                Text("密码:")
                TextField("Nick Name", text: $password, onEditingChanged: {
                    (value) in
                    print("onEditingChanged:\(self.password)")
                    
                }) {
                    print("onCommit:\(self.password)")
                }.textFieldStyle(RoundedBorderTextFieldStyle()).padding(10).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
        .padding()
        .offset(y: -150)
        .navigationBarTitle(Text("TextField"))
    }
}
