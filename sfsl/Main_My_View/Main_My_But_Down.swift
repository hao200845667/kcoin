//
//  Main_My_But_Down.swift
//  sfsl
//
//  Created by Z Soul on 2020/5/16.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct Main_My_But_Down: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Image("icon_main_my_order")
                Text("我的订单")
                    .padding(.leading, 3)
            }.padding(.top, 10)
            HStack {
                 Image("icon_main_my_team")
                Text("我的团队")
                    
                    .padding(.leading, 3)
            }.padding(.top, 10)
            HStack {
                Image("icon_main_my_zc_mx").padding(.leading, -3)
                Text("资产明细")
                    
                
            }.padding(.top, 10)
            HStack {
                Image("icon_main_my_kuangji")
                Text("我的矿机").padding(.leading, 4)
                    
            }.padding(.top, 10)
            HStack {
                Image("icon_main_my_setting")
                    .shadow(radius: 3)
                Text("设置")
                   
                 Spacer()
            }.padding(.top, 10)
           
        }.padding(.leading,10)
            .padding(.top,10)
    }
}

struct Main_My_But_Down_Previews: PreviewProvider {
    static var previews: some View {
        Main_My_But_Down()
    }
}

