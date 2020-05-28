//
//  Information.swift
//  sfsl
//
//  Created by Z Soul on 2020/5/27.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct Information: View {
    var body: some View {
        
        VStack {
            RemoteImage(url: "http://sfsl.huitongshiye.cn/uploads/images/2019/11-06/80ce71ae3907b43bbea2b1d9bcddfffc.jpg")
                .frame(width:90, height: 90)
                .clipShape(Circle())
                .padding(.top, 30)
            Text("更换头像").frame(width: 100, height: 30)
                .background(Color("Color2").cornerRadius(30))
                .foregroundColor(Color.white)
                .padding(.top, 10)
            
            HStack {
                VStack {
                    Text("姓名")
                    Text("你大爷")
                }.padding(.leading, 40)
                Spacer()
                Image("init")
                    .padding(.trailing, 40)
            }  .padding(.top, 40)
            
            HStack {
                VStack {
                    Text("昵称")
                    Text("你大爷")
                }.padding(.leading, 40)
                Spacer()
                Image("init")
                    .padding(.trailing, 40)
            }  .padding(.top, 20)
            
            HStack {
                VStack {
                    Text("邮箱")
                    Text("你大爷")
                }.padding(.leading, 40)
                Spacer()
                Image("init")
                    .padding(.trailing, 40)
            }  .padding(.top, 20)
            
            HStack {
                VStack {
                    Text("密码")
                    Text("你大爷")
                }.padding(.leading, 40)
                Spacer()
                Image("init")
                    .padding(.trailing, 40)
            }  .padding(.top, 20)
            
            HStack {
                VStack {
                    Text("电话号码")
                    Text("你大爷")
                }.padding(.leading, 40)
                Spacer()
                Image("init")
                    .padding(.trailing, 40)
            }  .padding(.top, 20)
            Spacer()
        }
        
        
        
        
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
        .background(Image("main_bg")
        .resizable()
        .renderingMode(.original))
        
    }
}
