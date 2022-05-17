//
//  AboutProtocols.swift
//  VIPER
//
//  Created by Eugene on 15.05.2022.
//

import Foundation

protocol AboutConfiguratorProtocol: AnyObject {
    //В этом методе конфигурируется модуль!!!
    func configure(with viewController: AboutViewController)
}

protocol AboutViewProtocol: AnyObject {
    //Установка подписи к кнопке с URL
    func setUrlButtonTitle(with title: String)
}

protocol AboutPresenterProtocol: AnyObject {
    var router: AboutRouterProtocol! { get set }
    func configureView()
    func closeButtonClicked()
    func urlButtonClicked(with urlString: String?)
}

protocol AboutRouterProtocol: AnyObject {
    func closeCurrentViewController()
}

//Логика, хранение и извлечение данных
protocol AboutInteractorProtocol: AnyObject {
    var urlRatesResource: String { get }
    func openUrl(with urlString: String)
}



