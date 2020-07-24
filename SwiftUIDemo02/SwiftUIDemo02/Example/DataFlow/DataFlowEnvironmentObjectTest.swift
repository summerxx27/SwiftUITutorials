//
//  DataFlowEnvironmentObjectTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/22.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

class UserSettings2: ObservableObject {
    @Published var score = 123
}

struct DataFlowEnvironmentObjectTest: View {
    
    @EnvironmentObject var settings2: UserSettings2
    
    var body: some View {
        NavigationView{
            VStack {
                // 显示score
                Text("人气值： \(settings2.score)").font(.title).padding()
                // 改变score
                Button(action: {
                    self.settings2.score += 1
                }) {
                    Text("增加人气")
                }
                // 跳转下一个界面
                NavigationLink(destination: DataFlowDetailView()) {
                    Text("下一个界面").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
                }
            }
        }
        
    }
}

struct DataFlowEnvironmentObjectTest_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowEnvironmentObjectTest()
    }
}
