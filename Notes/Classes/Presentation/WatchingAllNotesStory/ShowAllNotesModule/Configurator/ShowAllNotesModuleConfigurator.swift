//
//  ShowAllNotesModuleShowAllNotesModuleConfigurator.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

import UIKit

class ShowAllNotesModuleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ShowAllNotesModuleViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ShowAllNotesModuleViewController) {

        let router = ShowAllNotesModuleRouter()

        let presenter = ShowAllNotesModulePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ShowAllNotesModuleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
