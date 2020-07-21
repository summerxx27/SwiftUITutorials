//
//  CustomCell.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/21.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct CustomCell: View {
    
    private let title: String
    private let subTitle: String?
    // 初始化
    init(title: String, subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        // 竖直方向组合标题, 副标题
        VStack(alignment: .leading, spacing: 5) {
            // 标题加粗
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
}

#if DEBUG
struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(title: "test")
    }
}
#endif
