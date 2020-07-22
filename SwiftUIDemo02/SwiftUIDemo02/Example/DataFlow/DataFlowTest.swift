//
//  DataFlowTest.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/22.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct Model {
    
    var title: String
    var info: String
}

struct DataFlowTest : View {
    
    var model = Model(title: "WWDC 2019", info: "SwiftUI是一个全新的UI框架")
    
    var body: some View {
        
        VStack {
            Text(model.title).font(.title)
            Text(model.info)
        }
    }
}

struct DataFlowTest_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowTest()
    }
}
