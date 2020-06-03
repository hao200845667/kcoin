
import SwiftUI

struct HKCBannerView: UIViewControllerRepresentable {
    @State var banner_url: [String] 
    func makeUIViewController(context: UIViewControllerRepresentableContext<HKCBannerView>) -> HKCBannerController {
        let HBC = HKCBannerController()
        HBC.createCyclePicture1(pic: banner_url)
        return HBC
    }

    func updateUIViewController(_ uiViewController: HKCBannerController, context: Context) {}

}



