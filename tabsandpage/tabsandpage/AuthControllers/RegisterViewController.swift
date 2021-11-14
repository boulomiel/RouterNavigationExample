//
//  RegisterViewController.swift
//  tabsandpage
//
//  Created by Ruben Mimoun on 11/11/2021.
//

import Foundation
import UIKit


class RegisterViewController : UIViewController, AuthPageStoryboard{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }
    
    @IBAction func registerAction(_ sender: Any) {
        Router.showNotesTabs()
    }
}
