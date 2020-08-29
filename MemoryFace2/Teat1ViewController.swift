//
//  Teat1ViewController.swift
//  MemoryFace2
//
//  Created by 福井　愛梨 on 2020/07/25.
//  Copyright © 2020 福井　愛梨. All rights reserved.
//

import UIKit
import RealmSwift

class Teat1ViewController: UIViewController {
    
    class TestData: Object {
        
        // 名前.
        dynamic var name = String()
        // 年齢.
        dynamic var age = Int()
        // 出身地.
        dynamic var graduate = String()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // RealmDBが保存されているパスの取得.
    let libraryPath = NSHomeDirectory() + "/Library"
    let filePath =  NSURL(fileURLWithPath: libraryPath + "/Test.realm")
    
    // Realmインスタンスの作成.
    let realm = try! Realm(fileURL: filePath as URL)
    
    // 書き込むデータ.
    let testData = TestData()
    testData.name = '西野カナ'
    testData.age = 28
    testData.graduate = '三重県'
    
    // 書き込み.
    try! realm.write {
    realm.add(profitData)
}
  
