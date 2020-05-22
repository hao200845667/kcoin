//
//  TostModifer.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/20.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

//123

struct TostData {
    var title: String
    var type: TostType
}

enum TostType {
    case info
    case waring
    case success
    case error
    
    var tinitColor : Color {
        switch self {
        case .info:
            return Color.red
        case .waring:
            return Color.yellow
        case .success:
            return Color.green
        case .error:
            return Color.red
        }
    }
}

struct TostModifer: ViewModifier {
    
    @Binding var data: TostData
    @Binding var show: Bool
    
    @State var task: DispatchWorkItem?
    
    func body(content: Content) -> some View {
        ZStack{
            if show {
                VStack{
                    HStack{
                        Spacer()
                        VStack(){
                            Text(data.title)
                                .bold()
                        }
                        Spacer()
                    }
                    .foregroundColor(Color.white)
                    .padding(12)
                    .background(data.type.tinitColor)
                    .cornerRadius(8)
                    .shadow(radius: 20)
                    Spacer()
                }
            .zIndex(1)
                .padding()
                .animation(.easeInOut(duration: 1.2))
                .transition(AnyTransition.move(edge: .top).combined(with: .opacity))
                .onTapGesture {
                    withAnimation {
                        self.show = false
                    }
                }.onAppear()  {
                    self.task = DispatchWorkItem {
                        withAnimation {
                            self.show = false
                        }
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: self.task!)
                }
                .onDisappear {
                    self.task?.cancel()
                }
            }
            content
        }
    }
}

extension View {
    func banner(data: Binding<TostData> , show : Binding<Bool>) -> some View {
        self.modifier(TostModifer(data: data , show : show))
    }
}
