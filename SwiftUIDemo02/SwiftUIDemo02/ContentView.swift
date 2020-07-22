//
//  ContentView.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("基础控件")) {
                    // 跳转到Text
                    NavigationLink(destination: TextTest()) {
                        CustomCell(title: "Text控件的演示", subTitle: "显示多行文本, 组合文本, 文本样式等")
                    }
                    // 跳转到TextField
                    NavigationLink(destination: TextFieldTest()) {
                        CustomCell(title: "TextField控件的演示", subTitle: "竖直组合多个TF控件")
                    }
                    // 跳转到Image
                    NavigationLink(destination: ImageTest()) {
                        CustomCell(title: "Image控件的演示", subTitle: "竖直组合多个Image控件, 切圆角等")
                    }
                    // 跳转到WebImage/网络图片
                    NavigationLink(destination: WebImageTest()) {
                        CustomCell(title: "网络图片加载演示", subTitle: "网络图片下载, 加载")
                    }
                    // 跳转到普通Button
                    NavigationLink(destination: ButtonTest()) {
                        CustomCell(title: "Button控件演示", subTitle: "普普通通的按钮一个, 带图片的按钮啊, 按钮组合")
                    }
                    // 跳转到List
                    NavigationLink(destination: ListTest()) {
                        CustomCell(title: "List控件演示", subTitle: "List展示")
                    }
                    // 跳转到scrollView
                    NavigationLink(destination: ScrollViewTest()) {
                        CustomCell(title: "ScrollView控件演示", subTitle: "ScrollView展示")
                    }
                    // 跳转到@State @Binding运用页
                    NavigationLink(destination: DataFlowStateBindingTest()) {
                        CustomCell(title: "DataFlowStateBindingTest数据流演示", subTitle: "DataFlowStateBindingTest")
                    }
                    // 跳转到ObservableObject运用页
                    NavigationLink(destination: DataFlowObservableObjectTest()) {
                        CustomCell(title: "DataFlowObservableObjectTest演示", subTitle: "DataFlowObservableObjectTest")
                    }
                    
                    // 跳转到ObservableObject运用页
                    NavigationLink(destination: DataFlowEnvironmentObjectTest()) {
                        CustomCell(title: "DataFlowEnvironmentObjectTest演示", subTitle: "DataFlowEnvironmentObjectTest")
                    }
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("SwiftUI演示"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                print("Tap")
            }, label: {
                Text("button").foregroundColor(.orange)
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
