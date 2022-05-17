//
//  AboutViewController.swift
//  VIPER
//
//  Created by Eugene on 15.05.2022.
//

import UIKit

class AboutViewController: UIViewController, AboutViewProtocol {
    @IBOutlet weak var urlButton: UIButton!
    
    @IBAction func closeButtonClicked(_ sender: UIBarButtonItem) {
        presenter.closeButtonClicked()
    }
    
    @IBAction func urlButtonClicked(_ sender: UIButton) {
        presenter.urlButtonClicked(with: sender.currentTitle)
    }
    
    var presenter: AboutPresenterProtocol!
    let configurator: AboutConfiguratorProtocol = AboutConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
    }

    func setUrlButtonTitle(with title: String) {
        urlButton.setTitle(title, for: .normal)
    }
    
}
