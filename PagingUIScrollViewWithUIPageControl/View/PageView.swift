//
//  PageView.swift
//  PagingUIScrollViewWithUIPageControl
//
//  Created by GIS on 7/15/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class PageView: UIView {
    
    var label: UILabel!
    
    override func layoutSubviews() {
        
        self.backgroundColor = .yellow
        setUpView()
        setUpLayout()
        
    }
    
    func setUpView() {
        
        // label
        label = UILabel()
        label.text = "Label"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .black
        label.textAlignment = .center
        
        self.addSubview(label)
        
    }
    
    func setUpLayout() {
        
        label.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 50)
        label.center = self.center
        
    }
    
}
