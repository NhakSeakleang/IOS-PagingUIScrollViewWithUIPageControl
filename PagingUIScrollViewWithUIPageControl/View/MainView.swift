//
//  MainView.swift
//  PagingUIScrollViewWithUIPageControl
//
//  Created by GIS on 7/15/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    var scrollView: UIScrollView!
    var pageControl: UIPageControl!
    
    override func layoutSubviews() {
        
        setUp()
        
    }
    
    func setUp() {
        
        self.backgroundColor = .white
        setUpView()
        setUpLayout()
        
    }
    
    func setUpView() {
        
        // scrollView
        scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        addSubview(scrollView)
        
        // pageControl
        pageControl = UIPageControl()
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        addSubview(pageControl)
        bringSubviewToFront(pageControl)
        
    }
    
    func setUpLayout() {
        
        // scrollView
        scrollView.frame = self.frame
        
        // pageControl
        pageControl.frame = CGRect(x: 0, y: self.frame.height - CGFloat(100), width: self.frame.width, height: 40)
        pageControl.center.x = self.center.x
        
    }
    
}
