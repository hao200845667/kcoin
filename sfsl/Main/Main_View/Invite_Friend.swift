//
//  Invite_Friend.swift
//  sfsl
//
//  Created by Z Soul on 2020/5/21.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct Invite_Friend: View {
    var body: some View {
        VStack {
            Text("邀请码：130600")
                .padding(.top, 30)
            Image("Invite_friend_QRImage")
            Text("立即邀请").frame(width: 120, height: 30)
                .background(Color("loginAndRegist").cornerRadius(30))
                .foregroundColor(Color.white)
                .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                .padding(.top,20)
            
            
            Text("1.每邀请一位好友注册并购买或租赁矿机，邀请人（若购买过商品激活账户）将获得1枚kc/t：\n\n2.被邀请人购买或租赁矿机并在开始挖矿，邀请人（若购买过商品激活账户）则获得10枚kcoin/t奖励，无烧伤！额度有限，奖完为止！")
                .padding(.top, 30)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .foregroundColor(Color.red)
            
            Spacer()
        }
        
    }
}

struct Invite_Friend_Previews: PreviewProvider {
    static var previews: some View {
        Invite_Friend()
    }
}
