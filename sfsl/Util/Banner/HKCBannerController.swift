//
//  HKCBanner.swift
//  ykd_demo
//
//  Created by Z Soul on 2019/12/21.
//  Copyright © 2019 Z Soul. All rights reserved.
//

import SwiftUI

class HKCBannerController: UIViewController {
    
  // 数据源
  let pictures: [String] = ["http://sfsl.huitongshiye.cn/uploads/images/2019/11-06/80ce71ae3907b43bbea2b1d9bcddfffc.jpg", "https://sifangsuanliimg.oss-cn-shanghai.aliyuncs.com/uploads/20191218/b917b08872e78a39c2b8ae7ca32eacb9.png","http://sfsl.huitongshiye.cn/uploads/images/2019/11-07/10d48d1123853f8d4e250d508a93c5e1.jpg","http://ww1.sinaimg.cn/orj480/736f0c7ejw1f659dt6n94j20bu06k754.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCyclePicture1()
    }
func createCyclePicture1() {
    
    let cyclePictureView: HKCycleView = HKCycleView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200))
    
    cyclePictureView.setUrlsGroup(pictures)
    
    cyclePictureView.itemSize = CGSize(width: UIScreen.main.bounds.width-80, height: (UIScreen.main.bounds.width-80)*360/750)
    
    cyclePictureView.itemSpacing = 30
    
    cyclePictureView.itemZoomScale = 1.1
    
    cyclePictureView.pageControlItemSize = CGSize.zero
    
    cyclePictureView.backgroundColor = UIColor.clear
    
    cyclePictureView.pageControlCurrentItemRadius = 20
    //元素图片圆角大小
    cyclePictureView.itemCornerRadius = 10
    
    cyclePictureView.timeInterval = 3
    
    cyclePictureView.didSelectedItem = { index in
        
            print("dianjil\(index+1 )zhang picture")
        }
    
    self.view.addSubview(cyclePictureView)
    }
}
