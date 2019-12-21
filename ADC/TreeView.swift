//
//  StartView.swift
//  ADC
//
//  Created by CHEN SINYU on 2019/12/21.
//  Copyright © 2019 CHEN SINYU. All rights reserved.
//

import SwiftUI
import SpriteKit

struct TreeView: UIViewRepresentable {
       class Coordinator: NSObject {var scene: SKScene?
       }
       func makeCoordinator() -> Coordinator {
           return Coordinator()
       }
       func makeUIView(context: Context) -> SKView {
           //SkView作成
           let skView = SKView()
           //シーン作成
           let scene = SKScene()
           //クリスマスてツリーノードを作成
           let treeNode = SKSpriteNode(imageNamed: "tree")
           treeNode.position = CGPoint(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/3)
           //スターノードを作成
           let starNode = SKSpriteNode(fileNamed: "StarParticle")
           starNode?.position = CGPoint(x: 0, y: treeNode.position.y-50)
           //ライトノードを作成
           let lightNode1 = SKSpriteNode(fileNamed: "Light1Particle")
           lightNode1?.position = CGPoint(x: 0, y: starNode!.position.y-120)
           let lightNode2 = SKSpriteNode(fileNamed: "Light2Particle")
           lightNode2?.position = CGPoint(x: 0, y: starNode!.position.y-200)
           //クリスマスツリーノードにスターノードとライトノードを入れる
           treeNode.addChild(starNode!)
           treeNode.addChild(lightNode1!)
           treeNode.addChild(lightNode2!)
           //シーンクリスマスツリーノードを入れる
           scene.addChild(treeNode)
           scene.scaleMode = .resizeFill
           //シーン背景色を透明で黒色にする
           scene.backgroundColor = UIColor.init(displayP3Red: 0, green: 0, blue: 0, alpha: 0.1)
           //シーンをこのviewの内容に設定
           context.coordinator.scene = scene
           return skView
       }
    
       func updateUIView(_ view: SKView, context: Context) {
          view.presentScene(context.coordinator.scene)
       }
}

struct TreeView_Previews: PreviewProvider {
    static var previews: some View {
       TreeView()
    }
}
