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
    var interactor: AnyInteractor? {
        didSet{
            interactor?.getUsers()
        }
    }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        switch result {
        case .success(let users):
            view?.update(with: users)
        case .failure(let error):
            view?.update(with: "Something went wrong: \(error)")
        }
    }
    
}
