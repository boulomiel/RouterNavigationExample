//
//  Router.swift
//  tabsandpage
//
//  Created by Ruben Mimoun on 11/11/2021.
//

import Foundation
import UIKit


class Router {
    
    private static var navigationController : UINavigationController? = {
        guard let firstScene = UIApplication.shared.connectedScenes.first,
              let delegate =  firstScene.delegate as? SceneDelegate,
              let root = delegate.window,
              let navController =  root.rootViewController as? UINavigationController else {
                  print("Router", "No navigation controller at the root")
                  return nil}
        return navController
    }()
    
    private static var root : UIWindow? = {
        guard let firstScene = UIApplication.shared.connectedScenes.first,
              let delegate =  firstScene.delegate as? SceneDelegate,
              let root = delegate.window else {
                  return nil
              }
        return root
    }()
    
    static func showAuthViewController(){
        let vc : AuthPageviewController = AuthPageviewController.instantiate()
        Router.push(controller: vc)
    }
    
    static func showNotesTabs(){
        let vc : NotesTabsViewController =  NotesTabsViewController.instantiate()
        Router.push(controller: vc)
    }
    
    static func showNotesEditViewController(){
        let vc : NotesEditViewController = NotesEditViewController.instantiate()
        Router.push(controller: vc)
    }
    
    private static func push<T : UIViewController>(controller : T){
        let controllers = Router.navigationController?.viewControllers ?? []
        if !controllers.contains(where: {$0.self is T}){
            Router.navigationController?.pushViewController(controller, animated:  true)
        }else{
            if let index =  controllers.firstIndex(where: {$0 is T}){
                Router.navigationController?.popToViewController(controllers[index], animated: true)
            }
        }
    }
    
}


extension AuthPageStoryboard{
    
    static func instantiate<T : UIViewController>() -> T{
        let className = String(describing: self)
        return UIStoryboard(name: "Auth", bundle: nil).instantiateViewController(withIdentifier: className) as! T
    }
}


extension NotesStoryBoard {
    static func instantiate<T : UIViewController>() -> T{
        let className = String(describing: self)
        return UIStoryboard(name: "Notes", bundle: nil).instantiateViewController(withIdentifier: className) as! T
    }
}
