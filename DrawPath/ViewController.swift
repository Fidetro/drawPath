//
//  ViewController.swift
//  DrawPath
//
//  Created by Fidetro on 2018/8/5.
//  Copyright © 2018年 Fidetro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var drawView : DrawView!
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }
    
    @IBAction func getImageAction(_ sender: Any) {
        
        
        
    }

    @IBAction func drawAction(_ sender: Any) {
        drawView = DrawView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
//        drawView.backgroundColor = .white
        self.view.addSubview(drawView)
        view.sendSubview(toBack: drawView)

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

