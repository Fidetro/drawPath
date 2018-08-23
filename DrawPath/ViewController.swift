//
//  ViewController.swift
//  DrawPath
//
//  Created by Fidetro on 2018/8/5.
//  Copyright © 2018年 Fidetro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var drawView : DrawView?
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }
    
    @IBAction func getImageAction(_ sender: Any) {
        
        
        
    }

    @IBAction func drawRectAPathAction(_ sender: Any) {
        drawView?.removeFromSuperview()
        drawView = DrawView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        drawView?.needDrawRect = true
        drawView?.setupAPath()
        self.view.addSubview(drawView!)
        view.sendSubview(toBack: drawView!)
    }


    @IBAction func drawRectBPathAction(_ sender: Any) {
        drawView?.removeFromSuperview()
        drawView = DrawView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        drawView?.needDrawRect = true
        drawView?.setupBPath()
        self.view.addSubview(drawView!)
        view.sendSubview(toBack: drawView!)
    }
    

    
    @IBAction func drawLyerAPathAction(_ sender: Any) {
        drawView?.removeFromSuperview()
        drawView = DrawView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        drawView?.setupAPath()
        self.view.addSubview(drawView!)
        view.sendSubview(toBack: drawView!)
        drawView?.drawLayer()
    }

    
    @IBAction func drawLayerBPathAction(_ sender: Any) {
        drawView?.removeFromSuperview()
        drawView = DrawView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        drawView?.setupBPath()
        self.view.addSubview(drawView!)
        view.sendSubview(toBack: drawView!)
        drawView?.drawLayer()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

