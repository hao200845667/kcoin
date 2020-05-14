//
//  Main_Button.swift
//  ykd_demo
//
//  Created by Z Soul on 2019/12/31.
//  Copyright © 2019 Z Soul. All rights reserved.
//

import SwiftUI

struct Main_Button: View {
    var body: some View {
        
        HStack {
            VStack {
                Image("icon_kc_xueyuan")
                    .shadow(radius: 3)
                Text("KC商学院")
                    .font(.caption)
            }.frame(width: UIScreen.main.bounds.width/4-10)
            
            VStack {
                Image("icon_yaoqing")
                    .shadow(radius: 3)
                Text("邀请好友")
                    .font(.caption)
            }.frame(width: UIScreen.main.bounds.width/4-10)
            
            VStack {
                Image("icon_bay_shop")
                    .shadow(radius: 3)
                Text("购买商城")
                    .font(.caption)
            }.frame(width: UIScreen.main.bounds.width/4-10)
            VStack {
                Image("icon_otc")
                    .shadow(radius: 3)
                Text("OTC")
                    .font(.caption)
            }.frame(width: UIScreen.main.bounds.width/4-10)
        }.padding(.leading,10)
            .padding(.top,10)
        
    }
    
}

struct Main_Button_Previews: PreviewProvider {
    static var previews: some View {
        Main_Button()
    }
}
