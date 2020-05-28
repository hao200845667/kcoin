//
//  Main_My_Button.swift
//  sfsl
//
//  Created by Z Soul on 2020/5/16.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct Main_My_Button: View {
    var body: some View {
           HStack {
                 VStack {
                    Image("icon_main_my_property")
                         .shadow(radius: 3)
                     Text("资产明细")
                         .font(.caption)
                 }.frame(width: UIScreen.main.bounds.width/4-10)
                 
                 VStack {
                    Image("icon_main_my_wallet")
                         .shadow(radius: 3)
                     Text("我的钱包")
                         .font(.caption)
                 }.frame(width: UIScreen.main.bounds.width/4-10)
                 
                 VStack {
                        Image("icon_main_my_friend")
                         .shadow(radius: 3)
                     Text("邀请好友")
                         .font(.caption)
                 }.frame(width: UIScreen.main.bounds.width/4-10)
                 VStack {
                    Image("icon_main_my_chongzhi")
                         .shadow(radius: 3)
                     Text("充值提现")
                         .font(.caption)
                 }.frame(width: UIScreen.main.bounds.width/4-10)
             }.padding(.leading,10)
                 .padding(.top,10)
    }
}

struct Main_My_Button_Previews: PreviewProvider {
    static var previews: some View {
        Main_My_Button()
    }
}








