//
//  LoginView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/13.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var width_main = UIScreen.main.bounds.width
    var high_main = UIScreen.main.bounds.height
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var phone:String = ""
    @State var password:String = ""
    @State var viewState = CGSize.zero
    @Binding var showflag:Bool
    @State var bd:TostData = TostData(title: "", type: .success)
    @State var tostflag = false
    @State var task: DispatchWorkItem?
    
    var body: some View {
        NavigationView{
            VStack(){
                HStack(){
                    Button( action: {
                        // 这个时候，该怎么返回呢？
                        // 这里，我们就要提到 EnvroimentData 了
                        // EnvironmentValue 中 存在 var presentationMode: Binding<PresentationMode>  这个东西。我们可以通过来控制一下。
                        self.presentationMode.wrappedValue.dismiss()
                    } , label: {Image("back")} )
                    Spacer()
                    Text("登陆")
                        .font(.headline)
                    Spacer()
                }
                .padding()
                .padding(.top,20)
                Spacer()
                VStack{
                    Image("user")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 100,height: 100)
                Group{
                    HStack(spacing: 0){
                        Image("phone")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 35)
                        TextField("请输入手机号码", text: self.$phone)
                            //                                .font(Font.system(size: 60))
                            .frame(width: 270,height: 50)
                            .padding(.leading)
                            .contentShape(RoundedRectangle(cornerRadius: 1))
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                    HStack(spacing: 0){
                        Image("password")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 35)
                        SecureField("请输入密码", text: self.$password)
                            .frame(width: 270,height: 50)
                            .padding(.leading)
                            .contentShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                }.shadow(color: Color.gray, radius: 5, x: 0, y: 1)
                    .frame(width: width_main - 60)
                    .padding(.top,10)
                Button(action: {
                    if self.phone == "" || self.password == "" {
                        self.bd.title = "请输入正确账户"
                        self.bd.type = .waring
                        self.tostflag=true
                    }else{
                        self.bd.title = "登陆成功"
                        self.bd.type = .success
                        self.tostflag=true
                        self.task = DispatchWorkItem {
                            withAnimation {
                                self.showflag=false
                            }
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: self.task!)
                        
                    }
                }, label: {
                    Text("登陆")
                        .foregroundColor(Color.white)
                        .frame(width: width_main-60,height: 50)
                        .background(Color("loginAndRegist").cornerRadius(30))
                        .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                        .padding(.top,20)
                    //                        .opacity(0.1)
                })
                
                HStack{
                    NavigationLink(destination: RegistView().navigationBarTitle(Text("")).navigationBarHidden(true)) {
                        Text("立即注册")
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    NavigationLink(destination: FindPasswordView().navigationBarTitle(Text("")).navigationBarHidden(true)) {
                        Text("找回密码")
                            .foregroundColor(Color.white)
                    }
                    
                }
                .padding(.top,20)
                .frame(width: width_main - 60)
                Spacer()
                    .padding()
            }
            .banner(data: self.$bd, show: self.$tostflag)
            .frame(width: width_main, height: high_main)
            .background(Image("login1")
            .resizable()
            .renderingMode(.original)
            .edgesIgnoringSafeArea(.top)
            )
                .onTapGesture {
                    let keyWindow = UIApplication.shared.connectedScenes
                        .filter({$0.activationState == .foregroundActive})
                        .map({$0 as? UIWindowScene})
                        .compactMap({$0})
                        .first?.windows
                        .filter({$0.isKeyWindow}).first
                    keyWindow!.endEditing(true)
            }
            .navigationBarTitle(Text(""))
            .navigationBarHidden(true)
            //            .modifier(FullScreenSwipBack())
            
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(showflag: .constant(true))
    }
}
