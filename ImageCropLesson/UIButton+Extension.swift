//
//  UIButton+Extension.swift
//  ImageCropLesson
//
//  Created by C4Q on 1/9/20.
//  Copyright © 2020 Iram Fattah. All rights reserved.
//

import UIKit

extension UIButton {
    func toggle() {
        self.isEnabled = self.isEnabled ? false : true
    }
}
