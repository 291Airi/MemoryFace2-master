//
//  PersonViewController.swift
//  MemoryFace2
//
//  Created by 福井　愛梨 on 2020/06/27.
//  Copyright © 2020 福井　愛梨. All rights reserved.
//

import UIKit

class person{
    var textFieldString: String!
    var hint1: String!
    var hint2: String!
    var pictureurl: String!
    
    init(textFieldString: String, hint1: String, hint2: String, pictureurl: String) {
        self.textFieldString = textFieldString
        self.hint1 = hint1
        self.hint2 = hint2
        self.pictureurl = pictureurl
    }
    
    func getImage() -> UIImage{
        return UIImage(named: pictureurl)!
    }
}
