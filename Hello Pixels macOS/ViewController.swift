//
//  ViewController.swift
//  Hello Pixels macOS
//
//  Created by Hexagons on 2019-04-02.
//  Copyright © 2019 Hexagons. All rights reserved.
//

import Cocoa
import PixelKit

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(Render.main.final.view)
        
    }
    
    override func viewWillLayout() {
        super.viewWillLayout()
        
        Render.main.final.view.frame = view.bounds
        
        for generator in Render.main.generators {
            generator.res = .custom(w: Int(view.bounds.size.width * 2), h: Int(view.bounds.size.height * 2))
        }
        
    }
    
    override func viewDidAppear() {
        view.window?.title = "Hello Pixels"
    }

}

