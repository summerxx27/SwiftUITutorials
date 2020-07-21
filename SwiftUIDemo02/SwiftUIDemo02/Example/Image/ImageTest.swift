//
//  ImageTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct ImageTest: View {
    let range = 0..<5
    
    var body: some View {
        VStack {
            ForEach(range) { index in
                Image("summerxx1")
                    .resizable()
                    .frame(width: CGFloat(30 * index),
                           height: CGFloat(30 * index),
                           alignment: .center)
                    .padding(15)
                    .clipShape(Circle().inset(by: 15.0))
                    .onTapGesture {
                    print("Tap \(index)")
                }
            }
        }.navigationBarTitle(Text("Image"))
    }
}
