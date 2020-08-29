//
//  TestViewController.swift
//  MemoryFace2
//
//  Created by 福井　愛梨 on 2020/07/25.
//  Copyright © 2020 福井　愛梨. All rights reserved.
//

    import UIKit
    import RealmSwift

/// 選手モデル
       class Player: Object {
           // 選手名
           @objc dynamic var name : String = ""
           // 身長(単位：m)
           @objc dynamic var height : Double = 0.0
           // 体重(単位：kg)
           @objc dynamic var weight : Double = 0.0
       }
    
    class TestViewController: UIViewController,UINavigationControllerDelegate{
        
        
         var realm: Realm!
        
    override func viewDidLoad() {
        // データ登録用コード例
        // 1人目の選手
        let player1 = Player()
        player1.name = "HIRO"
        player1.height = 163.0
        player1.weight = 60.5
        
        // 2人目の選手
        let player2 = Player()
        player2.name = "CHIHIRO"
        player2.height = 175.0
        player2.weight = 58.0
        
        // 3人目の選手
        let player3 = Player()
        player3.name = "SHURI"
        player3.height = 170.0
        player3.weight = 61.2
        
        // 上記で作成した3人の選手を格納するリストの作成
        let players = List<Player>()
        players.append(player1)
        players.append(player2)
        players.append(player3)
        
        // Realmのインスタンスを生成する
        let realm = try! Realm()
        
        
        // 書き込みトランザクション内でデータを追加する
        try! realm.write {
        realm.add(players)
        
        // (1)Realmのインスタンスを生成する
        let realm = try! Realm()
        // (2)全データの取得
        let results = realm.objects(Player.self)
        // (3)取得データの確認
        print(results)
        
        }
        
    }
}
