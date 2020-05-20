//
//  RemoteImage.swift
//  SwiftUIImageLoader
//  Created by Z Soul on 2020/5/15.
//  Copyright © 2020 隔壁家的电冰箱。. All rights reserved.
//

import Foundation
import SwiftUI

open class ImageLoader: ObservableObject {
    
    @Published var data:Data?
    @Published var size:CGFloat?
    
    public init() {
        
    }
    
    public func loadImage (imageURL: String) {
        print(imageURL)
        if let url = URL(string: imageURL)  {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                
                let httpResponse = response as! HTTPURLResponse
                
                if let d = data {
                    DispatchQueue.main.async {
                        if httpResponse.statusCode == 200 {
                            self.data = d
                        } else {
                            self.data = nil
                        }
                    }
                } else {
                    DispatchQueue.main.async {
                        self.data = nil
                    }
                }
            }
            task.resume()
        } else {
            DispatchQueue.main.async {
                self.data =  nil
            }
        }
        
    }
    
}

public struct RemoteImage: View {
    
    @ObservedObject var imageLoader:ImageLoader = ImageLoader()
    
    
    public init(url: String) {
        self.imageLoader.loadImage(imageURL: url)
    
    }
    
    public var body: some View {
        VStack {
            Image(uiImage: imageLoader.data != nil ? UIImage(data:imageLoader.data!)! : UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150, height:150)
        }
    }
    
}
