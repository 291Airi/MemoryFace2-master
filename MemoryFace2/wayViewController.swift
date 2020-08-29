//
//  wayViewController.swift
//  MemoryFace2
//
//  Created by 福井　愛梨 on 2020/02/28.
//  Copyright © 2020 福井　愛梨. All rights reserved.
//

import UIKit

class wayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        // Do any additional setup after loading the view.
    }
    
    var count:Int = 0
    
    @IBOutlet weak var mark: UILabel!
    @IBOutlet weak var mark2: UILabel!
    @IBOutlet weak var mark3: UILabel!
    @IBOutlet weak var mark4: UILabel!
    @IBOutlet weak var mark5: UILabel!
    @IBOutlet weak var right: UIButton!
    @IBOutlet weak var light: UIButton!
    @IBOutlet weak var way: UILabel!
    
    @IBAction func right(_ sender: Any) {
        count = count + 1
        if count == 0{
            mark5.isHidden = true
            mark.isHidden = false
            mark2.isHidden = false
            mark3.isHidden = false
            mark4.isHidden = false
            way.text = "設定して…"
        }else if count == 1{
            mark5.isHidden = false
            mark.isHidden = true
            mark2.isHidden = true
            mark3.isHidden = true
            mark4.isHidden = true
            way.text = "“保存“をクリック"
        }
        
    }
    
    @IBAction func left(_ sender: Any) {
        if count == 0{
            performSegue(withIdentifier: "return", sender: nil)
        }else if count == 1{
            mark5.isHidden = true
            mark.isHidden = false
            mark2.isHidden = false
            mark3.isHidden = false
            mark4.isHidden = false
            way.text = "設定して…"
            count = 0
        }
    }
    
    
    

}
