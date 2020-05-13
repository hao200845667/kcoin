
import SwiftUI
import Alamofire
import HandyJSON
import UIKit

struct Login: View {
    
    @State var userphone: String = ""
    @State var password: String = ""
    @State var Success: String = "Success"
    @State var showAlert = false
    @State var showModel = false
    @State var showActivity = false
    @State private var showingAlert = false
    
    var width_main = UIScreen.main.bounds.width
    var high_main = UIScreen.main.bounds.height
    @State var alertTitle = "状态"
    @State var alertMsg = "正在登录...."
    
    var userdata = UserDefaults.standard
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                VStack{
                    Image("logo")
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 19.0, height: 20.0)
                }
                .padding(.bottom, high_main/13)
                
                Text("用户登陆").font(.title)
                Group{
                    VStack {
                        TextField("请输入手机号码", text: self.$userphone)
                            .frame(height: 40)
                            .padding(.leading)
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                    VStack {
                        SecureField("请输入密码", text: self.$password)
                            .frame(height: 40)
                            .padding(.leading)
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }.frame(width: width_main - 60)
                
                
                
                HStack(spacing: 60.0) {
                    //                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), isActive: $showActivity){
                    Button(action: {
                        self.showActivity = false
                        
                        if self.userphone == "" || self.password == "" {
                            
                            Toast(text:"请输入正确的手机号和密码").show()
                            return
                        } else {
                            let parameters = [
                                "phone":self.userphone,
                                "password":self.password
                            ]
                            AF.request(YKD_Url.Login_URL,method: .post, parameters: parameters,encoding: JSONEncoding.default )
                                .responseJSON { response in
                                    print(response)
                                    switch response.result {
                                    //result字段  是否为success
                                    case .success:
                                        //拿到json数据   options为转换的类型
                                        let dict: Dictionary = try! JSONSerialization.jsonObject(with: response.data!, options: .mutableLeaves) as! Dictionary< String ,Any>
                                        //json转成对象
                                        print(dict)
                                        let mappedobject = NSDATA.deserialize(from: dict)
                                        //判断对象里面的resp_code字段
                                        switch (mappedobject?.code){
                                        case "0":
                                            //self.userdata.set(((mappedobject?.data)?.phone)!, forKey: "phone")
                                            //                                            self.userdata.set(((mappedobject?.data)?.userToken)!,forKey: "userToken")
                                            //self.userdata.set(((mappedobject?.result)?.nickName)!,forKey: "nickName")
                                            self.showActivity = true
                                            Toast(text:(mappedobject?.msg)!).show()
                                            
                                        default:
                                            Toast(text:(mappedobject?.msg)!).show()
                                            break;
                                        }
                                        break
                                    case .failure( _):
                                        self.showActivity = false
                                        Toast(text:"网络异常，请稍后重试！").show()
                                        break
                                    }
                            }
                        }
                    })
                    {
                        Text("登 陆").foregroundColor(Color("Color1"))
                    }
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        Text("注 册").foregroundColor(Color("Color1"))
                    }.alert(isPresented: $showingAlert){
                        Alert(title: Text("注意"),
                              message: Text("功能正在开发中，敬请期待"),
                              dismissButton: .default(Text("确定")))
                    }
                    
                }.padding(.top , 20)
                
            }.padding(.bottom, high_main / 5)
            .background(Image("login") .renderingMode(.original)
            .aspectRatio(contentMode: .fit))
        }
    }
    
    struct Login_Previews: PreviewProvider {
        
        static var previews: some View {
            Login()
            
        }
    }
}
