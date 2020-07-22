//
//  DataFlowStateBindingTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/22.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct DataFlowStateBindingTest: View {
    // 用@State修饰需要改变的变量
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)").foregroundColor(.orange).font(.largeTitle).padding()
            // $访问传递给另外一个UI
            CountButton(count: $count)
        }
    }
}

struct CountButton : View {
    // 用@Binding修饰，绑定count的值
    @Binding var count: Int
    
    var body: some View {
        Button(action: {
            // 此处修改数据会同步到上面的UI
            self.count = self.count + 1
            
        }) { Text("CountButton点击改变")
        }
    }
}

struct DataFlowStateBindingTest_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowStateBindingTest()
    }
}
