//
//  ContentView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2019/11/28.
//  Copyright © 2019 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
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
        }
//    .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)

//                .edgesIgnoringSafeArea(.top)
//                .environment(\.colorScheme, .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
