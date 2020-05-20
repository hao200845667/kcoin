//
//  StartView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/14.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
                Image(systemName: "folder")
                Text("首页")
            }
            StoreView().tabItem {
                Image(systemName: "cart")
                Text("挖矿")
            }
            Main_MyView().tabItem {
                Image(systemName: "person")
                Text("我的")
            }
        }
        
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
