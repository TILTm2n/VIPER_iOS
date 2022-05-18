//
//  Interactor.swift
//  VIPER
//
//  Created by Eugene on 17.05.2022.
//

import Foundation

//object
//protocol
//reference to presenter, services

class UserInteractor: AnyInteractor {
    weak var presenter: AnyPresenter?
    
    func getUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                self?.presenter?.interactorDidFetchUsers(with: .failure(FetchError.failed))
                return
            }
            
            do {
                let entities = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interactorDidFetchUsers(with: .success(entities))
            } catch let error {
                self?.presenter?.interactorDidFetchUsers(with: .failure(error))
            }
            
        }
        
        task.resume()
    }
}
