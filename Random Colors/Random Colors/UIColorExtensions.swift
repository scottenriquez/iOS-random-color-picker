//
//  UIColorExtensions.swift
//  Random Colors
//
//  Created by Scott Enriquez on 7/6/20.
//  Copyright © 2020 Scott Enriquez. All rights reserved.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                       alpha: 1)
    }
}
