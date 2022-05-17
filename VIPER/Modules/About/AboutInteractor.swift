//
//  AboutInteractor.swift
//  VIPER
//
//  Created by Eugene on 15.05.2022.
//

import Foundation

class AboutInteractor: AboutInteractorProtocol {
    
    weak var presenter: AboutPresenterProtocol!
    let serverService: ServerServiceProtocol = ServerService()
    
    required init(presenter: AboutPresenterProtocol) {
        self.presenter = presenter
    }
    
    var urlRatesResource: String {
        get {
            return serverService.urlRatesSource
        }
    }
    
    func openUrl(with urlString: String) {
        serverService.openUrl(with: urlString)
    }
    
}
