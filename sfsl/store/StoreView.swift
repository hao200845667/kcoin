//
//  StoreView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2019/12/25.
//  Copyright © 2019 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct StoreView: View {
    @State var sheet:Bool=false
    let SroreData = [
        Sroreview_(title: "BTC服务器56T(1%)", money: "5600(USDT)", count: "0", time: "2019",remark:"机器商家时间为7个工作日内"),
        Sroreview_(title: "BTC服务器56T(1%)", money: "5600(USDT)", count: "50", time: "2019",remark:"机器商家时间为7个工作日内"),
        Sroreview_(title: "BTC服务器56T(1%)", money: "5600(USDT)", count: "30", time: "2019",remark:"机器商家时间为7个工作日内"),
        Sroreview_(title: "BTC服务器56T(1%)", money: "5600(USDT)", count: "100", time: "2019",remark:"机器商家时间为7个工作日内"),
        Sroreview_(title: "BTC服务器56T(1%)", money: "5600(USDT)", count: "20", time: "2019",remark:"机器商家时间为7个工作日内"),
        Sroreview_(title: "BTC服务器56T(1%)", money: "5600(USDT)", count: "10", time: "2019",remark:"机器商家时间为7个工作日内")
    ]
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack{
                    ForEach(SroreData){item in
                        NavigationLink(destination: StoreDetailsView()              .navigationBarTitle(Text("矿机详情"),displayMode: .inline)
                        ){
                            ExtractedView(storeview_data: item)
                        }
                    }
                    .onAppear {
                        NSLog("🚩执行1")
                    }
                }
            }
            .background(Color("background"))
            .navigationBarTitle(Text("矿机商城"),displayMode: .inline)
        }
        
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}

struct ExtractedView: View {
    var width_main = UIScreen.main.bounds.width
    var high_main = UIScreen.main.bounds.height
    var storeview_data:Sroreview_ = Sroreview_(title: "", money: "", count: "", time: "",remark:"")
    
    var body: some View {
        //        NavigationLink(destination: StoreDetailsView()){
        VStack(spacing: 0){
            HStack(){
                VStack(){
                    Text("KCOIN")
                        .font(.caption)
                        .foregroundColor(Color.yellow)
                        .padding(.horizontal,3)
                        .padding(.vertical,3)
                    Text("算力")
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .padding(.horizontal,9)
                        .padding(.vertical,3)
                        .background(Color.yellow)
                    
                }
                .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.yellow,lineWidth: 2))
                Text(storeview_data.title)
                    .foregroundColor(Color.gray)
                    .padding(.leading,10)
                Spacer()
            }
            .padding()
            Divider()
            HStack(spacing: 100){
                VStack{
                    Text("购买价:")
                        .foregroundColor(Color.gray)
                    Spacer()
                    HStack(spacing: 2){
                        Text("5000")
                            .foregroundColor(Color.green)
                        Text("( KC )")
                    }
                }
                VStack{
                    Text("剩余库存:")
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text(storeview_data.count)
                }
                
            }
            .padding()
            Divider()
            HStack(){
                Text(" 购买即时生效 ")
                    .foregroundColor(Color("Color2"))
                    .overlay(RoundedRectangle(cornerRadius: 2).stroke(Color("Color2"),lineWidth: 1))
                Text(" 有效时间30天 ")
                    .foregroundColor(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 2).stroke(Color.blue,lineWidth: 1))
                Text(" 需要抵押币 ")
                    .foregroundColor(Color.red)
                    .overlay(RoundedRectangle(cornerRadius: 2).stroke(Color.red,lineWidth: 1))
                Spacer()
            }
            .padding()
            
        }
        .background(Color.white)
        .frame(width: width_main - 30)
        .font(.footnote)
        .cornerRadius(20)
        .padding()
        .shadow(radius: 10)
        .onAppear {
            NSLog("🚩第二页")
        }.onDisappear {
            NSLog("---------2️⃣ SecondView disappear-------")
        }
    }
    
    //    }
    
    
}
