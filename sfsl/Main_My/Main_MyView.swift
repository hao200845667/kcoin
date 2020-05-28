//
//  Main_MyView.swift
//  sfsl
//
//  Created by Z Soul on 2020/5/14.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct Main_MyView: View {
    @State var show_kc: Bool=true
    @State var show_usdt: Bool=true
    
    var body: some View {
        
        VStack {
            ScrollView (.vertical,showsIndicators: false){
                HStack (alignment: .center){
                    RemoteImage(url: "http://sfsl.huitongshiye.cn/uploads/images/2019/11-06/80ce71ae3907b43bbea2b1d9bcddfffc.jpg")
                        .frame(width:70, height: 70)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("姓名")
                        Text("推荐人").padding(.top,5)
                    }.padding(.leading,10)
                    Spacer()
                }.padding(.leading,30)
                    .padding(.top,40)
                VStack(alignment: .leading){
                    
                    Text("KC可用资产")
                    HStack {
                        Text(self.show_kc ? "123" : "****").font(.system(size: 20))
                        Image("icon_visitily").padding(.leading,30)
                            .onTapGesture {
                                self.show_kc.toggle()
                        }
                        
                    }.padding(.top, -10)
                    Text("USDT可用资产").padding(.top, 10)
                    HStack {
                        
                        Text(self.show_usdt ? "123" : "****").font(.system(size: 20))
                        Image("icon_visitily").padding(.leading,30)
                            .onTapGesture {
                                self.show_usdt.toggle()
                        }
                        
                        
                        Spacer()
                    }.padding(.top, -10)
                    
                    
                }.padding(30)
                    .background(Color("Main_My_Monery_bg"))
                    .cornerRadius(20)
                    .padding([.leading,.trailing,.top],20)
                    .shadow(radius: 20)
                
                Main_My_Button().padding(.top, 10)
                
                Main_My_But_Down()
                    .padding(.leading, 30)
                    .padding(.top, 10)
                
                Spacer()
            }
        }
        .background(Color("background"))
        .edgesIgnoringSafeArea(.top)
        
    }
}

struct Main_MyView_Previews: PreviewProvider {
    static var previews: some View {
        Main_MyView()
    }
}
