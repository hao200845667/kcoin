//
//  TestView.swift
//  sfsl
//
//  Created by 隔壁家的电冰箱。 on 2020/5/3.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import SwiftUI
struct TestView: View {
    @State var numbers:[Int] = [23,45,76,54,76,3465,24,423]
    @State var secondsElapsed = 0
    var timer = Timer.publish (every: 1, on: .main, in: .common).autoconnect()
    
    var width_main = UIScreen.main.bounds.width
    var high_main = UIScreen.main.bounds.height
    var body: some View {
        NavigationView {
            NavigationLink(destination: TimerView()) {
                Text("Go to Timer View")
            }
        }
        .environment(\.colorScheme, .dark)
        
        
        
        
        
        
        
    }
}

struct TimerView: View {
    @State var secondsElapsed = 0
    var timer = Timer.publish (every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("\(self.secondsElapsed) seconds elapsed")
            Button("Stop timer",
                   action: {
                    self.timer.upstream.connect().cancel()
            })
        }.onReceive(timer) { _ in
            self.secondsElapsed += 1
        }
    }
}

struct TimerView2: View {
    @State var secondsElapsed = 0
    @State var timer: Timer.TimerPublisher = Timer.publish (every: 1, on: .main, in: .common)
    var body: some View {
        VStack {
            Text("\(self.secondsElapsed) seconds elapsed")
            Button("Stop timer",
                   action: {
                    self.cancelTimer() // Just to be a little more DRY/maintenance-friendly, but personal preference.
            })
        }.onAppear(perform: {
            self.instantiateTimer() // You could also consider an optional self.timer variable.
            self.timer.connect() // This allows you to manually connect where you want with greater efficiency, if you don't always want to autostart.
        }).onDisappear(perform: {
            // I don't know your exact flow, but you said you want the timer to restart upon return navigation.
            // So, I am just assuming you want to stop the timer when you navigate out.
            // But, you can also easily remove this closure.
            // Also, this may not run as you would intuit.
            self.cancelTimer()
        }).onReceive(timer) { _ in
            self.secondsElapsed += 1
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
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView2()
    }
}
