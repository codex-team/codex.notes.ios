//
//  ShowAllNotesModuleShowAllNotesModulePresenter.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

class ShowAllNotesModulePresenter: ShowAllNotesModuleModuleInput,
ShowAllNotesModuleViewOutput,
ShowAllNotesModuleInteractorOutput {

    weak var view: ShowAllNotesModuleViewInput!
    var interactor: ShowAllNotesModuleInteractorInput!
    var router: ShowAllNotesModuleRouterInput!

    func viewIsReady() {

    }
}
