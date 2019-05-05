//
//  Render.swift
//  Hello Pixels iOS
//
//  Created by Hexagons on 2019-04-02.
//  Copyright © 2019 Hexagons. All rights reserved.
//

#if os(iOS)
import Pixels
#elseif os(macOS)
import Pixels_macOS
#endif

class Render {
    
    static let main = Render()
    
    var final: PIX!
    
    var generators: [PIXGenerator] = []
    
    init() {
        
        let polygon = PolygonPIX(res: ._128)
        polygon.rotation = .live / 60
        
        let circle = CirclePIX(res: ._128)
        circle.radius = 0.25 - .liveWave(for: 5) / 30
        
        let noise = NoisePIX(res: ._128)
        noise.octaves = 3
        noise.zPosition = .live / 10
        
        let gradient = GradientPIX(res: ._128)
        gradient.direction = .radial
        gradient.extendRamp = .mirror
        
        final = polygon * 0.25 + circle * 0.25 + noise * !gradient
        
        generators = [polygon, circle, noise, gradient]
        
    }
    
}
