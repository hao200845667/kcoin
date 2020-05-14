
import UIKit

class MarqueeViewController: UIViewController {
    var marqueeType: JXMarqueeType?
  
    
    func viewDidLoad(data: String) {
        super.viewDidLoad()
    }
    
    
    func mscrolllabel_data(data: String) {
        self.view.backgroundColor = UIColor.clear
        let marqueeView = JXMarqueeView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width-85, height: 20))
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.text = data
        
        marqueeView.contentView = label
//        marqueeView.center = self.view.center
        marqueeView.backgroundColor = UIColor.clear
        marqueeView.contentMargin = 100
        marqueeView.marqueeType = .left
        self.view.addSubview(marqueeView)
    }
    
    
}
