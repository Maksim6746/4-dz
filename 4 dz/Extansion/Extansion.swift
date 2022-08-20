//
//  Extansion.swift
//  4 dz
//
//  Created by Максим Мигранов on 20.08.2022.
//

import UIKit

extension UIView {
    func addVerticalGradientLayer() {
         let primaryColor = UIColor(red: 210/255,
                                           green: 109/255,
                                           blue: 230/255,
                                           alpha: 1
        )
         let secondaryColor = UIColor(red: 107/255,
                                             green: 148/255,
                                             blue: 230/255,
                                             alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [secondaryColor.cgColor, primaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
        }
}

