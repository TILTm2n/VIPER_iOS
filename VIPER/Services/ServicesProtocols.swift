//
//  ServicesProtocols.swift
//  VIPER
//
//  Created by Eugene on 16.05.2022.
//

import Foundation

protocol ServerServiceProtocol: AnyObject {
    var urlRatesSource: String { get }
    func openUrl(with urlString: String)
}
