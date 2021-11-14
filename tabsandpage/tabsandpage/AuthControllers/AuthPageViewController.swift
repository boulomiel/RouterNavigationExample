//
//  AuthPageViewController.swift
//  tabsandpage
//
//  Created by Ruben Mimoun on 11/11/2021.
//

import Foundation
import UIKit

protocol AuthPageStoryboard {}

class AuthPageviewController : UIPageViewController, AuthPageStoryboard{
    
    lazy var pagesControlled : [UIViewController] = {
        let login : LoginViewController =  LoginViewController.instantiate()
        let register : RegisterViewController =  RegisterViewController.instantiate()
        return [login, register]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.setHidesBackButton(true, animated: false )
        self.dataSource = self
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setViewControllers([pagesControlled[0]], direction: .forward, animated: true, completion: nil)
    }
}

extension AuthPageviewController :  UIPageViewControllerDelegate, UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let current =  pagesControlled.firstIndex(of: viewController)!
        if current == 0 {
            return nil
        }else{
            return  pagesControlled[current - 1]
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let max =  pagesControlled.count - 1
        let current =  pagesControlled.firstIndex(of: viewController)!
        if current == max {
            return nil
        }else{
            return pagesControlled[current + 1 ]
        }
    }
    
    
}
