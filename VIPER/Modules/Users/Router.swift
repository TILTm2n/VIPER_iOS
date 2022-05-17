//
//  Router.swift
//  VIPER
//
//  Created by Eugene on 17.05.2022.
//

import Foundation

//object
//entry point

class UserRouter: AnyRouter {
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        return router
    }
}
