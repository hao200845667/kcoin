//
//  TestView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/3.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI
struct TestView: View {
   @State var str = "原图"
       
       var body: some View {
           let tad = DragGesture()
               .onChanged { value in
                   if(value.translation.width > 0) {
                       print("右滑动")
                   }else {
                       print("左滑动")
                   }
           }.onEnded { _ in
               self.str = "新图"
           }
           
           return TabView {
               Text("\(str)")
                .background(Color.blue)
           }.gesture(tad)
       }

}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
