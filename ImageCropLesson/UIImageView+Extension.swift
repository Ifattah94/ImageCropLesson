//
//  UIImageView+Extension.swift
//  ImageCropLesson
//
//  Created by C4Q on 1/9/20.
//  Copyright © 2020 Iram Fattah. All rights reserved.
//

import UIKit
extension UIImageView {
    func renderImageToLayer() {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 1)
        
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        
        
        UIGraphicsEndImageContext()
        
    }
    
    func turnOffInteraction() {
        self.isUserInteractionEnabled = false 
    }
}

