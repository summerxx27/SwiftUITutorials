//
//  DataFlowObservableObjectTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/22.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI


//
//class UserSettings: ObservableObject {
//    // 有可能会有多个视图使用，所以属性未声明为私有
//    // @Published修饰需要监听的属性，一旦变化就会发出通知，它是发布者
//    @Published var score = 123
//}
//
//struct DataFlowObservableObjectTest: View {
//    // @ObservedObject修饰UserSettings
//    @ObservedObject var settings = UserSettings()
//
//    var body: some View {
//        VStack {
//            Text("人气值： \(settings.score)").font(.title).padding()
//            Button(action: {
//                self.settings.score += 1
//            }) {
//                Text("增加人气")
//            }
//        }
//    }
//}

class UserSettings: ObservableObject {
    
    // 1.添加发布者，实现一个属性，名字不能乱写，否则没有效果
    let objectWillChange = ObjectWillChangePublisher()
    
    //2.只要name发生更改，属性观察器就会调用，告诉objectWillChange发布者发布有关我们的数据已更改的消息，以便所有订阅的视图都可以刷新的消息
    var name = "" {
        willSet {
            
            // 3.使用发布者
            objectWillChange.send()
        }
    }
}

struct DataFlowObservableObjectTest: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            TextField("姓名", text: $settings.name)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Text("你的姓名: \(settings.name)")
        }
    }
}

struct DataFlowObservableObjectTest_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowObservableObjectTest()
    }
}
