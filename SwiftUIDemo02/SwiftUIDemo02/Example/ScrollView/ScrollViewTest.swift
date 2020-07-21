//
//  ScrollView.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct ScrollViewTest: View {
    var body: some View {
        ScrollView {
            Text("SwiftUI-ScrollView").padding(20)
            Divider()
            Image("icon")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Divider()
            Text("Views and controls are the visual building blocks of your app’s user interface.")
        }
        .border(Color.gray, width: 1)
        .cornerRadius(10)
        .padding(10)
        .navigationBarTitle(Text("ScrollView演示"))
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTest()
    }
}
