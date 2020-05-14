
import SwiftUI

struct HKCBannerView: UIViewControllerRepresentable{
      var banner_url: [String]
        
    func makeUIViewController(context: UIViewControllerRepresentableContext<HKCBannerView>) -> HKCBannerController {
        return HKCBannerController()
    }
    func updateUIViewController(_ uiViewController: HKCBannerController, context:Context) {
        uiViewController.createCyclePicture1(pic: banner_url)
        
    }
}
