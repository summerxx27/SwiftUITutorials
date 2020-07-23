//
//  DataFlowDetailView.swift
//  SwiftUIDemo02
//
//  Created by summerxx on 2020/7/23.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI

struct DataFlowDetailView: View {
    
    @EnvironmentObject var settings2: UserSettings2
    
    var body: some View {
        VStack {
            Text("人气值： \(settings2.score)").font(.title).padding()
            Button(action: {
                self.settings2.score += 1
            }) {
                Text("增加人气")
            }
            
        }
    }
}

struct DataFlowDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DataFlowDetailView()
    }
}
