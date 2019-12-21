//
//  TextView.swift
//  ADC
//
//  Created by CHEN SINYU on 2019/12/21.
//  Copyright © 2019 CHEN SINYU. All rights reserved.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        //文字作成
        Text("Merry Christmas")
            //フォント設定
            .font(.largeTitle)
            //フォント太さ設定
            .fontWeight(.bold)
            .padding()
            //文字の色
            .foregroundColor(Color.white)
            //枠の線
            .background(Color.red)
            //文字と距離設定
            .padding(10)
            //枠の線の太さと色設定
            .border(Color.gray, width: 5)
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
