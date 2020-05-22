//
//  RegistView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/11.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct RegistView: View {
    var width_main = UIScreen.main.bounds.width
    var high_main = UIScreen.main.bounds.height
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var phone:String=""
    @State var password:String=""
    @State var sendSms:Bool=true;
    @State var secondsElapsed:Int = 59
    @State var timer: Timer.TimerPublisher = Timer.publish (every: 1, on: .main, in: .common)
    @State var bd:TostData = TostData(title: "注册成功", type: .success)
    @State var tostflag = false
    
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
                    Text("注册")
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
                        VStack{
                            Image("phone")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 35)
                            
                        }
                        VStack {
                            TextField("请输入手机号码", text: self.$phone)
                                .frame(width: 270,height: 50)
                                .padding(.leading)
                            //                            .contentShape(RoundedRectangle(cornerRadius: 30))
                            
                        }
                        .contentShape(RoundedRectangle(cornerRadius: 10))
                        
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                    
                    VStack {
                        HStack(spacing: 0){
                            VStack{
                                Image("sms")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 35)
                            }
                            HStack(){
                                TextField("请输入验证码", text: self.$password)
                                    .frame(width: 150,height: 50)
                                    .padding(.leading)
                                
                                if self.sendSms{
                                    Button(action: {
                                        self.sendSms=false;
                                        self.cancelTimer()
                                    }, label: {
                                        Text("发送验证码")
                                            .foregroundColor(Color.black)
                                            .font(.caption)
                                            .frame(width: 75,height: 20)
                                            .background(Color("loginAndRegist").cornerRadius(5))
                                            .padding()
                                    })
                                }else{
                                    Text("倒计时\(self.secondsElapsed)S")
                                        .foregroundColor(Color.black)
                                        .font(.caption)
                                        .frame(width: 75,height: 20)
                                        .background(Color("loginAndRegist").cornerRadius(5))
                                        .padding()
                                        .onAppear(perform: {
                                            self.instantiateTimer() // You could also consider an optional self.timer variable.
                                            self.timer.connect() // This allows you to manually connect where you want with greater efficiency, if you don't always want to autostart.
                                        }).onDisappear(perform: {
                                            // I don't know your exact flow, but you said you want the timer to restart upon return navigation.
                                            // So, I am just assuming you want to stop the timer when you navigate out.
                                            // But, you can also easily remove this closure.
                                            // Also, this may not run as you would intuit.
                                            self.cancelTimer()
                                        }).onReceive(timer) { _ in
                                            self.stop()
                                            self.secondsElapsed -= 1
                                    }
                                }
                                
                            }
                            .contentShape(RoundedRectangle(cornerRadius: 10))
                            
                            
                        }
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                    HStack(spacing: 0){
                        VStack{
                            Image("password")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 35)
                        }
                        VStack() {
                            SecureField("请输入密码", text: self.$phone)
                                .frame(width: 270,height: 50)
                                .padding(.leading)
                        }
                        .contentShape(RoundedRectangle(cornerRadius: 10))
                        
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                    HStack(spacing: 0){
                        VStack{
                            Image("password")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 35)
                        }
                        VStack {
                            SecureField("请再次输入密码", text: self.$phone)
                                .frame(width: 270,height: 50)
                                .padding(.leading)
                        }
                        .contentShape(RoundedRectangle(cornerRadius: 10))
                        
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                    
                }.shadow(color: Color.gray, radius: 5, x: 0, y: 1)
                    .frame(width: width_main - 60)
                    .padding(.top,10)
                Button(action: {
                    self.tostflag=true
                }, label: {
                    Text("注册完成")
                        .foregroundColor(Color.white)
                        .frame(width: width_main-60,height: 50)
                        .background(Color("loginAndRegist").cornerRadius(30))
                        .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                        .padding(.top,20)
                    
                })
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
        }
    }
    
    func instantiateTimer() {
        self.timer = Timer.publish (every: 1, on: .main, in: .common)
        return
    }
    
    func cancelTimer() {
        self.timer.connect().cancel()
        return
    }
    
    func stop() {
        if self.secondsElapsed == 1 {
            self.cancelTimer()
            self.sendSms=true;
            self.secondsElapsed = 59
            return
            
        }
    }
}


struct RegistView_Previews: PreviewProvider {
    static var previews: some View {
        RegistView()
    }
}
