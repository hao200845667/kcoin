//
//  LoginAndRegistView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/11.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI
import Introspect

struct LoginAndRegistView: View {
    var width_main = UIScreen.main.bounds.width
    var high_main = UIScreen.main.bounds.height
    @Binding var showflag:Bool
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 0 ){
                ZStack{
                    VStack{
                        Image("logo2")
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding(.bottom,high_main-450)
                    ZStack{
                        NavigationLink(destination: RegistView().navigationBarTitle(Text("")).navigationBarHidden(true)) {
                            Text("立即注册")
                                .foregroundColor(Color.white)
                                .frame(width: width_main-100,height: 60)
                                .background(Color("loginAndRegist").cornerRadius(10))
                                .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                            
                        }
                        NavigationLink(destination: LoginView(showflag: self.$showflag).navigationBarTitle(Text("")).navigationBarHidden(true)) {
                            Text("登录")
                                .foregroundColor(Color.white)
                                .frame(width: width_main-100,height: 60)
                                .background(Color("loginAndRegist").cornerRadius(10))
                                .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                        }
                        .padding(.top,180)

                        
                    }
                    .padding(.top,high_main-400)
                    
                }
                
            }
            .frame(width: width_main, height: high_main)
            .background(Image("login")
            .resizable()
            .renderingMode(.original)
            .edgesIgnoringSafeArea(.top)
            )
                .navigationBarTitle(Text(""))
                .navigationBarHidden(true)
            .modifier(FullScreenSwipBack())

        }
    }
}

struct LoginAndRegistView_Previews: PreviewProvider {
    static var previews: some View {
        LoginAndRegistView(showflag: .constant(true))
    }
}
