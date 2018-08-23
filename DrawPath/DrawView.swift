//
//  DrawView.swift
//  DrawPath
//
//  Created by Fidetro on 2018/8/5.
//  Copyright © 2018年 Fidetro. All rights reserved.
//

import UIKit

class DrawView: UIView {
    var bezier : UIBezierPath!
    var needDrawRect : Bool = false
    override func draw(_ rect: CGRect) {
        if needDrawRect == false {
            return
        }
        bezier.lineWidth = 2
        bezier.lineJoinStyle = .round
        bezier.lineCapStyle = .round
        UIColor.green.set()
        bezier.stroke()
    }
    
    func drawLayer() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = bezier.cgPath
        shapeLayer.lineJoin = "round"
        shapeLayer.lineCap = "round"
        shapeLayer.lineWidth = 10
        shapeLayer.strokeColor = UIColor.green.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        layer.addSublayer(shapeLayer)
    }
    
    func setupAPath() {
        bezier = UIBezierPath()
        let plistPath = Bundle.main.path(forResource: "test", ofType: "plist")!
        let points = (NSArray.init(contentsOfFile: plistPath) as! [String]).map{CGPointFromString($0)}
        for (index,point) in points.enumerated() {
            if index == 0 {
                bezier.move(to: point)
            }else{
                bezier.addLine(to: point)
            }
        }
    }
    
    func setupBPath() {
        bezier = UIBezierPath()
        for index in 0..<10000 {
            if index == 0 {
                bezier.move(to: CGPoint.init(x: 0, y: 0))
            }else{
                let point = index%2==0 ? CGPoint.init(x: 0, y: 0):CGPoint.init(x: 100, y: 100)
                bezier.addLine(to: point)
            }
        }
    }
    
    func points() -> [CGPoint] {
        let plistPath = Bundle.main.path(forResource: "test", ofType: "plist")!
        return (NSArray.init(contentsOfFile: plistPath) as! [String]).map{CGPointFromString($0)}
    }
    

}
