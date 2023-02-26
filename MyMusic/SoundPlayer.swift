//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 赤荻大輝 on 2023/01/20.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源データを読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            //シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            //シンバルの音源再生
            cymbalPlayer.play()
        }catch {
            print("シンバルで、エラーが発生しました！")
        }
    }//　cymbalPlay ここまで
    
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    var guitarPlayer: AVAudioPlayer!
    
    func guitarPlay() {
        do{
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        }catch {
            print("ギターで、エラーが発生しました！")
        }
    }// guitarPlay ここまで
}
