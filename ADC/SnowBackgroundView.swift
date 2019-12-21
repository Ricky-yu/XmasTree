//
//  SnowBackgroundView.swift
//  ADC
//
//  Created by CHEN SINYU on 2019/12/19.
//  Copyright © 2019 CHEN SINYU. All rights reserved.
//

import SwiftUI
import SpriteKit

struct SnowBackgroundView: UIViewRepresentable {
       class Coordinator: NSObject {
          var scene: SKScene?
       }
       func makeCoordinator() -> Coordinator {
           return Coordinator()
       }
       func makeUIView(context: Context) -> SKView {
           //SkView作成
           let skView = SKView()
           //FPSの表示
           skView.showsFPS = true
           //ノード数表示
           skView.showsNodeCount = true
           //シーン作成
           let scene = SKScene()
           //spriteの中心を設定する
           scene.anchorPoint = CGPoint(x: 0.5, y: 1)
           //ノードを作成
           let emitterNode = SKEmitterNode(fileNamed: "SnowParticle")
           //シーンにノード入れる
           scene.addChild(emitterNode!)
           scene.scaleMode = .resizeFill
           //シーンをこのviewの内容に設定
           context.coordinator.scene = scene
           
           return skView
       }
    
       func updateUIView(_ view: SKView, context: Context) {
           
          view.presentScene(context.coordinator.scene)
       }
}

struct SnowBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        SnowBackgroundView()
    }
}
