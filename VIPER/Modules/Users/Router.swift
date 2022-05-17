//
//  Router.swift
//  VIPER
//
//  Created by Eugene on 17.05.2022.
//

import Foundation
import UIKit

//object
//entry point

typealias EntryPoint = UIViewController & AnyView

class UserRouter: AnyRouter {
    
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        let view: AnyView = UserViewController()
        let presenter: AnyPresenter = UserPresenter()
        let interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        interactor.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        router.entry = view as? EntryPoint
        
        return router
    }
}
