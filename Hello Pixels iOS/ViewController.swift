//
//  ViewController.swift
//  Hello Pixels iOS
//
//  Created by Hexagons on 2019-04-02.
//  Copyright © 2019 Hexagons. All rights reserved.
//

import UIKit
import PixelKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(Render.main.final.view)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        Render.main.final.view.frame = view.bounds
        
        for generator in Render.main.generators {
            generator.res = .fullscreen
        }
        
    }

}

