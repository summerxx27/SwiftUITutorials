//
//  SwiftUIView.swift
//  SwiftUIDemo01
//
//  Created by summerxx on 2020/7/20.
//  Copyright © 2020 summerxx. All rights reserved.
//

import SwiftUI
import MapKit

struct XTCustomMapView: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // 1. 经纬度
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        // 2. 跨度
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        // 3. 地区
        let region = MKCoordinateRegion(center: coordinate, span: span)
        // 4. 设置
        uiView.setRegion(region, animated: true)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        XTCustomMapView()
    }
}
