////
////  NewsIView.swift
////  sfsl
////
////  Created by 隔壁家的电冰箱。 on 2019/11/28.
////  Copyright © 2019 隔壁家的电冰箱。. All rights reserved.
////
//
//import SwiftUI
//struct NewsView: View {
//    var body: some View {
//        NavigationView{
//            VStack(spacing: 0){
//                Image("newsTital")
//                    .resizable()
//                    .frame(height: 150)
//                Divider()
//                    .background(Color.gray)
//                    .scaleEffect(40)
//                list()
//
//                //                    .padding(.top,0)
//                Spacer()
//
//            }
//            .edgesIgnoringSafeArea(.top)
//        }
//    }
//}
//
//struct list: View{
//    @State private var streets = [Street(name: "The Lodon S11111231231231231231111treet"), Street(name: "The Joe's Street"), Street(name: "The House Street"),Street(name: "The Lodon Street"), Street(name: "The Joe's Street"), Street(name: "The House Street"),Street(name: "The Lodon Street"), Street(name: "The Joe's Street"), Street(name: "The House Street"),Street(name: "The Lodon Street"), Street(name: "The Joe's Street"), Street(name: "The House Street"),Street(name: "The Lodon Street"), Street(name: "The Joe's Street"), Street(name: "The House Street")]
//
//    @State var tiaozhuan: Bool=false
//    var body: some View {
//        RefreshableNavigationView(title:"", action:{
//            self.streets = [Street(name: "The Lodon S11111231231231231231111treet"), Street(name: "The Joe's Street"), Street(name: "The House Street"),Street(name: "The Lodon Street")]
//        }){
//            List(self.streets) { item in
//                NavigationLink(destination: Text("1")){
//                    HStack(spacing: 12){
//                        Image(systemName: "message")
//                            .frame(width: 80, height: 80)
//                            .background(Color.blue)
//                            .cornerRadius(20)
//                        VStack(alignment: .leading){
//                            Text("Task data goes here \(item.name)")
//                                .lineLimit(2)
//                                .lineSpacing(4)
//                                .font(.subheadline)
//                                .frame(height: 50.0)
//                            Text("2019-10-10")
//                                .font(.caption)
//                                .fontWeight(.bold)
//                                .foregroundColor(.gray)
//                        }
//
//                    }
//                    .padding(.vertical,8.0)
////                    .transition(AnyTransition.identity)
////                    .animation(.default)
//
//                }
//
//            }.listStyle(PlainListStyle())
//        }
//    }
//
//}
//
//
//struct Street: Identifiable {
//    var id = UUID()
//    var name: String
//}
//
//struct NewsView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsView()
//    }
//}
