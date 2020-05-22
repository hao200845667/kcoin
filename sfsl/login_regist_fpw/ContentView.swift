//
//  ContentView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2019/11/28.
//  Copyright © 2019 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showflag:Bool = true
    
    var body: some View {
        VStack{
            if showflag{
                LoginAndRegistView(showflag: self.$showflag)
            }else{
                StartView()
//                .animation(.easeInOut)
//                    .transition(AnyTransition.move(edge: .trailing).combined(with: .opacity))
            }
            
        }
            //.environment(\.colorScheme, .dark)
    

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
