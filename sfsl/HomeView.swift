//
//  HomeView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2019/12/24.
//  Copyright © 2019 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var show=false
    var body: some View {
       
            VStack{
                HKCBannerView()
                    .frame(width: UIScreen.main.bounds.width, height: 180)
                Button(action: {
                    Toast(text: "提示提示提示提示提示提示点击").show()
                }, label: {
                    Text("点击")
                })
                Spacer()
            }
            .sheet(isPresented: $show, content: {
                Button("关闭"){
                    self.show = false
                }
                Text("hello")
            })
            .background(Image("Image")
        .renderingMode(.original)
                       .resizable()
        .edgesIgnoringSafeArea(.all))

        
//.edgesIgnoringSafeArea(.top)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}
