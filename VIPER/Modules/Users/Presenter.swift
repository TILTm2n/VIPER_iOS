//
//  Presenter.swift
//  VIPER
//
//  Created by Eugene on 17.05.2022.
//

import Foundation

//object
//protocol
//reference to interactor, router, view

class UserPresenter: AnyPresenter {
    
    weak var view: AnyView?
    var router: AnyRouter?
    var interactor: AnyInteractor?
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        
    }
    
}
