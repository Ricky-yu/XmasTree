//
//  ContentView.swift
//  ADC
//
//  Created by CHEN SINYU on 2019/12/18.
//  Copyright © 2019 CHEN SINYU. All rights reserved.
//
import UIKit
import SwiftUI
import SpriteKit
struct ContentView: View {
    //@Stateプロパティを使ってUIの状態自動に同期
    @State private var displayTree = false
    
    var body: some View {
        //Z軸にビューを並べるコンポーネント
        ZStack{
            //縦軸にビューを並べるコンポーネント
            VStack{
                if(displayTree) {
                    ZStack{
                        //クリスマスツリーとギフトviewを呼び出す
                        TreeView()
                        GiftView()
                    }
                }
                Button(action: {
                    //ON/OFFを制御するコンポーネント
                    self.displayTree.toggle()
                }, label: {
                       TextView()
                })
            }
            //雪のviewを呼び出す
            SnowBackgroundView()
            //雪のviewを半透明にする
            .opacity(0.5)
        }.background(SwiftUI.Color.black.edgesIgnoringSafeArea(.all))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
