//
//  NotesMapViewController.swift
//  tabsandpage
//
//  Created by Ruben Mimoun on 11/11/2021.
//

import Foundation
import UIKit

class NotesMapViewController : UIViewController, NotesStoryBoard{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green

    }
    
    @IBAction func toEditViewController(_ sender: Any) {
        Router.showNotesEditViewController()

    }

}
