//
//  ViewController.swift
//  PagingUIScrollViewWithUIPageControl
//
//  Created by GIS on 7/15/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var mainView: MainView!
    var pages = [PageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpScrollView()
        
    }
    
    func setUp() {
        
        setUpView()
        
    }
    
    func setUpView() {
        
        mainView = MainView()
        self.view = mainView
        
    }
    
    func setUpScrollView() {
        
        let width = self.view.frame.width
        
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view1.backgroundColor = .yellow
        let view2 = UIView(frame: CGRect(x: width, y: 0, width: view.frame.width, height: view.frame.height))
        view2.backgroundColor = .purple
        let view3 = UIView(frame: CGRect(x: width * 2, y: 0, width: view.frame.width, height: view.frame.height))
        view3.backgroundColor = .green
        
        mainView.scrollView.contentSize = CGSize(width: view.frame.width * 3, height: self.view.frame.height)
        mainView.scrollView.addSubview(view1)
        mainView.scrollView.addSubview(view2)
        mainView.scrollView.addSubview(view3)
        mainView.scrollView.delegate = self
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let i = scrollView.contentOffset.x / view.frame.width
        print("\(i)")
        mainView.pageControl.currentPage = Int(round(i))
        
    }

}

