
import SwiftUI

struct HKCBannerView: UIViewControllerRepresentable{
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<HKCBannerView>) -> HKCBannerController {
        return HKCBannerController()
    }
    func updateUIViewController(_ uiViewController: HKCBannerController, context: UIViewControllerRepresentableContext<HKCBannerView>) {
        
    }
}
