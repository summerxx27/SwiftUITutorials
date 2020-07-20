//
//  ContentView.swift
//  SwiftUIDemo01
//
//  Created by summerxx on 2020/7/20.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            XTCustomMapView().edgesIgnoringSafeArea(.top)
            .frame(height: 300)
            
            Image("summerxx1").frame(width: 200.0, height: 200.0).clipShape(Circle())
            Text("夏天然后")
                .font(.title)
                .foregroundColor(.blue)
                .font(Font.system(Font.TextStyle.largeTitle))
                .frame(width: 150, height: 50, alignment: Alignment.center)
                
            HStack {
                Text("个人博客")
                .font(.title)
                .foregroundColor(.blue)
                    .font(Font.system(Font.TextStyle.largeTitle))
                Text("summerxx.com")
                .font(.title)
                .foregroundColor(.blue)
                    .font(Font.system(Font.TextStyle.largeTitle))
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("编辑资料")
            }.frame(width: 100, height: 40, alignment: Alignment.center)
                .font(Font.system(size: 18))    
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
