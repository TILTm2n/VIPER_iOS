//
//  AboutPresenter.swift
//  VIPER
//
//  Created by Eugene on 15.05.2022.
//

import Foundation

class AboutPresenter: AboutPresenterProtocol {
    
    weak var view: AboutViewProtocol!
    var interactor: AboutInteractorProtocol!
    var router: AboutRouterProtocol!
    
    required init(view: AboutViewProtocol) {
        self.view = view
    }
    //Инициализирует и конфигурирует первоначальные данные во вью-контроллере
    func configureView() {
        view.setUrlButtonTitle(with: interactor.urlRatesResource)
    }
    
    func closeButtonClicked() {
        router.closeCurrentViewController()
    }
    
    func urlButtonClicked(with urlString: String?) {
        if let url = urlString {
            interactor.openUrl(with: url)
        }
    }
    
    
}
