//
//  WebImageTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct WebImageTest: View {
    
    @State private var uiImage: UIImage? = nil
    // 站位图是夏目图片, 下载后变成一张表情包?!
    let placeholderImage = UIImage(named: "summerxx1")!
    
    var body: some View {
        Image(uiImage: self.uiImage ?? placeholderImage)
            .resizable()
            .onAppear(perform: downloadWebImage)
            .frame(width: 80,
                   height: 80,
                   alignment: .center)
            .onTapGesture {
                print("Tap ")
        }.navigationBarTitle(Text("WebImage"))
    }
    
    func downloadWebImage() {
        
        guard let url = URL(string: "https://tva1.sinaimg.cn/large/007S8ZIlly1ggyn061g4jj305e05gwfo.jpg") else {
            print("Invalid URL.")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data, let image = UIImage(data: data) {
                self.uiImage = image
            }else {
                print("error: \(String(describing: error))")
            }
        }.resume()
    }
}

//struct WebImageTest_Previews: PreviewProvider {
//    static var previews: some View {
//        WebImageTest()
//    }
//}
