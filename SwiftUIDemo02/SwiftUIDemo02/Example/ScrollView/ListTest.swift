//
//  ListTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI
import UIKit

struct ListTest: View {
    // 更多可以看 : https://www.jianshu.com/p/867e4a9a13fc
    var body: some View {
        List(0..<15) { item in
            Text("Hello World !").frame(width: UIScreen.main.bounds.size.width, height: 60, alignment: Alignment.center)
        }.navigationBarTitle(Text("List"), displayMode: .large)
    }
}

struct ListTest_Previews: PreviewProvider {
    static var previews: some View {
        ListTest()
    }
}
