//
//  ButtonTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct ButtonTest: View {
    var body: some View {
        VStack(spacing: 0) {
            
            Button(action: {
                print("点了我1")
            }) {
                Text("I'm a Button1").bold()
                    .font(.system(size: 40,design: .rounded))
                    .shadow(radius: 1)
            }
            
            Button(action: {
                print("点了我2")
            }) {
                Text("I'm a Button2").bold()
                    .font(.system(size: 40,design: .rounded))
                    .shadow(radius: 1)
            }
            
            Button(action: {
                print("点了我3")
            }) {
                // 包裹一层 VStack，变为上下
                VStack {
                    Text("I'm a Button3")
                    Image("summerxx1").resizable().renderingMode(.original)
                }
            }
                // 字体颜色, 和默认图片渲染色
                .foregroundColor(Color.blue)
                .padding()
                .background(Color.orange)
                .cornerRadius(20)
                .shadow(radius: 10)
                .frame(width: 160, height: 160)
            
        }.navigationBarTitle(Text("Button"))
    }
}
