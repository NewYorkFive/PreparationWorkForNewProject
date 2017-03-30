//
//  UILabel+Extension.swift
//  Swift_Microblogging
//
//  Created by NowOrNever on 30/03/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit
extension UILabel{
    convenience init(fontSize: CGFloat, textColor: UIColor){
        self.init()
        self.textColor = textColor
        self.font  = UIFont.systemFont(ofSize: fontSize)
    }
    convenience init(fontSize: CGFloat, textColor: UIColor, text:String){
        self.init()
        self.text = text
        self.textColor = textColor
        self.font  = UIFont.systemFont(ofSize: fontSize)
    }

}
