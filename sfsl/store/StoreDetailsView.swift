//
//  StoreDetailsView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/18.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct StoreDetailsView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        Text("BTC服务器56T(1%)")
                        
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
                        
                    }
                    HStack{
                        Text("15.0 KC")
                            .font(.title)
                            .foregroundColor(.red)
                        
                    }
                    .padding(.top,5)
                    HStack(){
                        VStack{
                            Text("合约期限")
                                .foregroundColor(.gray)
                                .font(.footnote)
                            Text("30天")
                                .font(.footnote)
                            
                        }
                        Spacer()
                        VStack{
                            Text("需抵押")
                                .foregroundColor(.gray)
                                .font(.footnote)
                            Text("1T/60 kcoin")
                                .font(.footnote)
                            
                        }
                        Spacer()
                        VStack{
                            Text("库存")
                                .foregroundColor(.gray)
                                .font(.footnote)
                            Text("30台")
                                .font(.footnote)
                        }
                    }
                    .padding()
                    
                    VStack{
                        Text("提示：此算力包需要2000kc抵押币，预计挖矿收益约（2000+630）KC")
                            .font(.callout)
                            .lineLimit(3)
                            .padding()
                    }
                    .frame(width: UIScreen.main.bounds.width-60)
                    .background(Color.red)
                    Group{
                        HStack{
                            Text("发币方式：")
                            Spacer()
                        }
                        HStack{
                            Text("生效时间：")
                            Spacer()
                        }
                        HStack{
                            Text("合约期限：")
                            Spacer()
                        }
                        HStack{
                            Text("算力来源：")
                            Spacer()
                        }
                    }
                    .font(.caption)
                    .padding(.top,10)
                    HStack{
                        Text("基础算力")
                        Spacer()
                        Text("10T/份")
                    }
                    .padding(.top,10)
                    
                }
                .padding()
                .padding(.top,10)
                .background(Color("background"))
                
            }
            Spacer()
        }
    }
}

struct StoreDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailsView()
    }
}
