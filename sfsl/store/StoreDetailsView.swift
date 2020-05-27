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
        //        NavigationView{
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                HStack{
                    Text("KCOIN存储型矩阵S1型矿机(90天){需质押2000KC/台}")
                    Spacer()
                    VStack(){
                        Text("KCOIN")
                            .font(.caption)
                            .foregroundColor(Color.yellow)
                            .padding(.horizontal,3)
                            .padding(.vertical,3)
                            .background(Color.white)
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
                    Spacer()
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
                        .font(.footnote)
                        .lineLimit(2)
                        .padding()
                }
                .frame(width: UIScreen.main.bounds.width-60)
                .background(Color.white)
                .cornerRadius(5)
                .shadow(radius: 5)
                Group{
                    HStack{
                        Text("发币方式：每日结算，次日发放至账户")
                        Spacer()
                    }
                    HStack{
                        Text("生效时间：购买立即生效")
                        Spacer()
                    }
                    HStack{
                        Text("合约期限：30天")
                        Spacer()
                    }
                    HStack{
                        Text("算力来源： KC Miner")
                        Spacer()
                    }
                }
                .font(.footnote)
                .padding(.top,10)
                HStack{
                    Text("基础算力")
                    Spacer()
                    Text("10T/份")
                }
                .padding(.top,10)
                Group{
                    HStack{
                        Text("kc 小矿工介绍")
                            .foregroundColor(.red)
                        Spacer()
                    }
                    Text("   平台不对用户获得的数字资产进行精准承诺，收益数量根据挖矿产出按照按照算力贡献分发，挖矿收益市场行情波动影响，非恒定，平台历史同期各种数据仅供参考，用户应自己独立判断后作出决策，自愿租用共享算力进行数字资产投资的用户，其行为产生的投资风险由用户自行承担。")
                        .lineSpacing(10)
                        .font(.footnote)
                        .padding([.leading,.trailing],5)
                    HStack{
                        Text("风险介绍")
                            .foregroundColor(.red)
                        Spacer()
                    }
                    Text("   平台不对用户获得的数字资产进行精准承诺，收益数量根据挖矿产出按照按照算力贡献分发，挖矿收益市场行情波动影响，非恒定，平台历史同期各种数据仅供参考，用户应自己独立判断后作出决策，自愿租用共享算力进行数字资产投资的用户，其行为产生的投资风险由用户自行承担。")
                        .lineSpacing(10)
                        .font(.footnote)
                        .padding([.leading,.trailing],5)
                    HStack{
                        Text("免责声明")
                            .foregroundColor(.red)
                        Spacer()
                    }
                    Text("   平台不对用户获得的数字资产进行精准承诺，收益数量根据挖矿产出按照按照算力贡献分发，挖矿收益市场行情波动影响，非恒定，平台历史同期各种数据仅供参考，用户应自己独立判断后作出决策，自愿租用共享算力进行数字资产投资的用户，其行为产生的投资风险由用户自行承担。")
                        .lineSpacing(10)
                        .font(.footnote)
                        .padding([.leading,.trailing],5)
                }
                .padding(.top,10)
            }
            .padding()
            //                .padding(.top)
            //                Spacer()
            
        }
        .background(Color("background"))
        //            .edgesIgnoringSafeArea(.top)
        //        }
    }
}

struct StoreDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailsView()
    }
}
