//
//  ContentView.swift
//  MyMusic
//
//  Created by 赤荻大輝 on 2023/01/20.
//

import SwiftUI

struct ContentView: View {
    //　音を鳴らすためのSoundPlayerクラスのインスタンスを生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack{
            //背景画像を表示する
            BackgroundView(imageName: "background")
            
            //水平にレイアウト（横方向にレイアウト）
            HStack {
                //シンバルボタン
                Button{
                    //ボタンをタップした時のアクション
                    //シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                } label: {
                    //画像を表示する
                    Image("cymbal")
                }//シンバルボタンはここまで
                
                //ギターボタン
                Button {
                    //ボタンをタップした時のアクション
                    //シンバルの音を鳴らす
                    soundPlayer.guitarPlay()
                } label: {
                    Image("guitar")
                }//ギターボタンはここまで
            }//HStack　ここまで
        }//ZStack ここまで
    }//body ここまで
}//ContentView　ここまで

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

