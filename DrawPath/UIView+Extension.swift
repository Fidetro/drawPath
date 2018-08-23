//
//  UIView+Extension.swift
//  DrawPath
//
//  Created by Fidetro on 2018/8/5.
//  Copyright © 2018年 Fidetro. All rights reserved.
//

import UIKit

extension UIView {
     func getImageForView() -> UIImage? {
        
        UIGraphicsBeginImageContext(bounds.size)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    func getImageForView(afterScreenUpdates:Bool) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, 0)
        drawHierarchy(in: bounds, afterScreenUpdates: afterScreenUpdates)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
