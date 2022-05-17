//
//  AboutConfigurator.swift
//  VIPER
//
//  Created by Eugene on 15.05.2022.
//

import Foundation

class AboutConfigurator: AboutConfiguratorProtocol {
    
    func configure(with viewController: AboutViewController) {
        let presenter = AboutPresenter(view: viewController)
        let interactor = AboutInteractor(presenter: presenter)
        let router = AboutRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.router = router
        presenter.interactor = interactor
    }
    
}
