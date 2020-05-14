//
//  JXMarqueeViewSwift.swift
//  ykd_demo
//
//  Created by Z Soul on 2020/5/12.
//  Copyright © 2020 Z Soul. All rights reserved.
//

import SwiftUI

struct JXMarqueeViewSwift: UIViewControllerRepresentable {
 
    var str : String
    func makeUIViewController(context: UIViewControllerRepresentableContext<JXMarqueeViewSwift>) ->
        MarqueeViewController {
           return MarqueeViewController()
       }
       func updateUIViewController(_ uiViewController: MarqueeViewController, context:Context) {
           uiViewController.mscrolllabel_data(data: str)
           
       }
}
