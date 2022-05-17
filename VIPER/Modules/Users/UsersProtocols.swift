//
//  Protocols.swift
//  VIPER
//
//  Created by Eugene on 17.05.2022.
//

import Foundation

protocol AnyView: AnyObject {
    
    var presenter: AnyPresenter? { get set }
    
    func update(with users: [User])
    func update(with users: String)
    
}

protocol AnyInteractor: AnyObject {
    
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
    
}

protocol AnyPresenter: AnyObject {
    
    var view: AnyView? { get set }
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
    
}

protocol AnyRouter: AnyObject {
    static func start() -> AnyRouter
}



