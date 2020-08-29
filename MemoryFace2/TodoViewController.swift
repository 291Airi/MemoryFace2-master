//
//  TodoViewController.swift
//  MemoryFace2
//
//  Created by 福井　愛梨 on 2019/12/07.
//  Copyright © 2019 福井　愛梨. All rights reserved.
//

import RealmSwift
class TodoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    class TodoItem: Object {
        @objc dynamic var title = ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
