//
//  HomeView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2019/12/24.
//  Copyright © 2019 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI
//测试
struct HomeView: View {
    @State var showImage: Bool = true
    var banner_url: [String] = ["http://sfsl.huitongshiye.cn/uploads/images/2019/11-06/80ce71ae3907b43bbea2b1d9bcddfffc.jpg", "https://sifangsuanliimg.oss-cn-shanghai.aliyuncs.com/uploads/20191218/b917b08872e78a39c2b8ae7ca32eacb9.png","http://sfsl.huitongshiye.cn/uploads/images/2019/11-07/10d48d1123853f8d4e250d508a93c5e1.jpg","http://ww1.sinaimg.cn/orj480/736f0c7ejw1f659dt6n94j20bu06k754.jpg"]
    
    var banner_kc_url:[String] = ["http://sfsl.huitongshiye.cn/uploads/images/2019/11-06/80ce71ae3907b43bbea2b1d9bcddfffc.jpg"]
    
    
    var body: some SwiftUI.View {
        
        VStack {
            ScrollView(.vertical,showsIndicators: false){
                HKCBannerView(banner_url:banner_url)
                    .frame(width: UIScreen.main.bounds.width, height: 180)
                    .blur(radius: self.showImage ? 0 : 3)
                HStack {
                    Image("icon_notification").padding(.leading, 10)
                    JXMarqueeViewSwift(str: "测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试")
                        .frame(height: 20)
                        .padding(.top,1)
                        .padding(.leading,-5)
                    Text("更多")
                        .foregroundColor(.orange)
                        .italic()
                        .shadow(color: .black, radius: 0.2, x: 0, y: 2)
                        .foregroundColor(Color.gray)
                        .fixedSize()
                        .padding(.trailing, 10)
                }
                .blur(radius: self.showImage ? 0 : 5)
                
                Main_Button()
                    .blur(radius: self.showImage ? 0 : 5)
                
                HStack {
                    Text("新人新福利")
                        .padding(.top, 15)
                        .padding(.leading, 25)
                    Spacer()
                }
                .blur(radius: self.showImage ? 0 : 5)
                
                Image(self.showImage ? "icon_main_new_people" : "icon_main_new_people_show")
                    .onTapGesture {
                        self.showImage.toggle()
                }
                HStack {
                    Text("KC简介")
                        .padding(.top, 10)
                        .padding(.leading, 20)
                    Spacer()
                }
                .blur(radius: self.showImage ? 0 : 5)
                
                HKCBannerView(banner_url:banner_kc_url)
                    .frame(width: UIScreen.main.bounds.width, height: 180)
                    .blur(radius: self.showImage ? 0 :5)
                
                Spacer()
            }
            .padding(.top,30)
            .background(Color("background"))
            .edgesIgnoringSafeArea(.top)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}
