//
//  TextTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

private let summerxx = "summerxx.com"

struct TextTest: View {
    var body: some View {
        VStack(spacing: 15) {
            ZStack{
                
                Text("SwiftUI-Bottom")
                    .foregroundColor(Color.red)
                Text("SwiftUI-Top")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.title)
                    .fontWeight(.medium)
                    .italic()
                    .shadow(color: .black, radius: 1, x: 0, y: 2)
            }
            
            Text(summerxx)
                .underline(true, color: Color.gray)
                .font(.system(size: 16, design: .serif)).onTapGesture {
                    print(summerxx)
            }
            
            HStack {
                Text("Title")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                Text("Text.bold").bold()
                Text("SecureField").foregroundColor(.orange)
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
                " Use them to present your app’s content onscreen.")
                .lineLimit(nil)
        }
    }
}

struct TextTest_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextTest()
                .previewDevice("iPhone 8")
            TextTest()
                .previewDevice("iPhone 11 Pro Max")
        }
    }
}
