//
//  NotesPageViewController.swift
//  tabsandpage
//
//  Created by Ruben Mimoun on 11/11/2021.
//

import Foundation
import UIKit

protocol NotesStoryBoard {}

class NotesTabsViewController : UITabBarController, NotesStoryBoard{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor = .purple.withAlphaComponent(0.5)
        self.navigationItem.setHidesBackButton(true, animated: false )
        self.navigationItem.rightBarButtonItem =  UIBarButtonItem(image: UIImage(systemName: "person.fill.xmark"), style: .plain, target: self, action: #selector(backToLogin))
    }
    
    @objc func backToLogin(){
        print("clicked")
        Router.showAuthViewController()
    }
}
