//
//  FullScreenSwipBack.swift
//  Snips
//
//  Created by 陈宝 on 2020/2/24.
//  Copyright © 2020 陈宝. All rights reserved.
//

import SwiftUI
import Introspect

struct FullScreenSwipBack: ViewModifier {
    func body(content: Content) -> some View {
        content
            .introspectNavigationController { (u: UINavigationController) in

                // MARK: - 全屏侧滑返回, 用到了 Runtime 可能在 未来 iOS 版本失效

                u.topViewController?.navigationController?.interactivePopGestureRecognizer?.isEnabled = false

                guard let systemGes = u.topViewController?.navigationController?.interactivePopGestureRecognizer else { return }

                guard let gesView = systemGes.view else { return }
                let targets = systemGes.value(forKey: "_targets") as? [NSObject]

                guard let targetObjc = targets?.first else { return }
                guard let target = targetObjc.value(forKey: "target") else { return }
                let action = Selector(("handleNavigationTransition:"))
                let panGes = UIPanGestureRecognizer()

                panGes.addTarget(target, action: action)
                gesView.addGestureRecognizer(panGes)
            }
    }
}
