//
//  Goods.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2019/12/26.
//  Copyright © 2019 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct Sroreview_: Identifiable {
    var id = UUID()
    var title: String
    var money: String
    var count: String
    var time: String
    var remark: String
}

struct Goods: View {
    var storeview_data:Sroreview_ = Sroreview_(title: "BTC服务器56T(1%)", money: "5600(USDT)", count: "111", time: "2019",remark:"机器商家时间为7个工作日内")
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                HStack(){
                    Text(storeview_data.title)
                    .foregroundColor(Color.white)

                }
                .padding()
                Divider()
                HStack(spacing: 100){
                    VStack{
                        Text("单份金额")
                        Text(storeview_data.money)
                        .foregroundColor(Color.white)

                    }
                    
                    VStack{
                        Text("剩余台数")
                        Text(storeview_data.count)
                        .foregroundColor(Color.white)

                    }
                }
                .padding()
                Divider()
                HStack(){
                    Text("开挖时间:\(storeview_data.time)")
                    .foregroundColor(Color.white)

                    Spacer()
                    Text(storeview_data.remark)
                    .foregroundColor(Color.white)

                }
                .padding()
               

            } .frame(minWidth: 0,maxWidth: .infinity)
                .font(.footnote)
                .background(Color.white)
                .cornerRadius(10)
                .padding()
                .shadow(radius: 20)
            .background(Image("Image"))

        }

    }
    
}

struct Goods_Previews: PreviewProvider {
    static var previews: some View {
        Goods()
    }
}

