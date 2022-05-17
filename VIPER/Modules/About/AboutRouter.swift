//
//  AboutRouter.swift
//  VIPER
//
//  Created by Eugene on 15.05.2022.
//

import Foundation

class AboutRouter: AboutRouterProtocol {
    
    weak var viewController: AboutViewController!
    
    init(viewController: AboutViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
