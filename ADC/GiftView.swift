//
//  TreeView.swift
//  ADC
//
//  Created by CHEN SINYU on 2019/12/19.
//  Copyright © 2019 CHEN SINYU. All rights reserved.
//

import SwiftUI

struct GiftView: View {
    var body: some View {
        ZStack{
            //重ねるギフトの絵作成
            Image("gift")
           .position(x: 130, y: 440)
            Image("gift1")
           .position(x: 150, y: 450)
            Image("gift2")
           .position(x: 220, y: 450)
        }
    }
}

struct GiftView_Previews: PreviewProvider {
    static var previews: some View {
        GiftView()
    }
}
