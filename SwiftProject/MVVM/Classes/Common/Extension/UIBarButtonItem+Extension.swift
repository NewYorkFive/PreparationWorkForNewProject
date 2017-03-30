//
//  UIBarButtonItem+Extension.swift
//  Swift_Microblogging
//
//  Created by NowOrNever on 26/03/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    convenience init(title:String,target:Any?,action:Selector,imageName:String) {
        self.init()
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        button.addTarget(target, action: action, for: .touchUpInside)
        button.setImage(UIImage(named:imageName), for: .normal)
        
        button.sizeToFit()
        self.customView = button
    }
    
    
    convenience init(title:String,target:Any?,action:Selector) {
        self.init()
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        button.addTarget(target, action: action, for: .touchUpInside)
        
        button.sizeToFit()
        self.customView = button        
    }
    
    convenience init(title:String) {
        self.init()
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        button.sizeToFit()
        self.customView = button
    }
}
