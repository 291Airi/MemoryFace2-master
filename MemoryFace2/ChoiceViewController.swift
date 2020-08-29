//
//  ChoiceViewController.swift
//  MemoryFace2
//
//  Created by 福井　愛梨 on 2020/07/16.
//  Copyright © 2020 福井　愛梨. All rights reserved.
//

import UIKit
import RealmSwift

class ChoiceViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    private var realm: Realm!
    
    @IBOutlet weak var table: UITableView!
    
    //名前を入れるための配列
    var NameArray = [String]()
    
    //写真を入れるための配列
    var imageNameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        
        table.delegate = self
        
        // (1)Realmのインスタンスを生成する
               let realm2 = try! Realm()
        // (2)全データの取得
               let results = realm2.objects(personArray.self)
        // (3)取得データの確認
               print(results)
        
        
       //NameArray,imageNameArrayに名前を入れる
        NameArray = [results[0].textFieldString]
        imageNameArray = [results[0].pictureurl]
        
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int{
        return NameArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        //セルに画像を表示する
        cell?.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        
        //セルにNameArrayを表示する
        cell?.textLabel?.text = NameArray[indexPath.row]
        
        return cell!
    }
    
    //セルが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            print("\(NameArray[indexPath.row])が選ばれました！")
        // (1)Realmのインスタンスを生成する
            let realm2 = try! Realm()
        // (2)全データの取得
            let results = realm2.objects(personArray.self)
        // (3)取得データの確認
            print(results)
        try! realm.write {
            realm.delete(results)
            // (1)Realmのインスタンスを生成する
                let realm2 = try! Realm()
            // (2)全データの取得
                let results = realm2.objects(personArray.self)
            // (3)取得データの確認
                print(results)
                   
        }

        
        //スワイプしたセルを削除
        if editingStyle == UITableViewCell.EditingStyle.delete {
            NameArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
        
        
    }
    
    //セルの編集許可
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool{
        return true
    }
    

}
