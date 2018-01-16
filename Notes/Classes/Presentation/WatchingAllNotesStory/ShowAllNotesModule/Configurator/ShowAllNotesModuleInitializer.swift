//
//  ShowAllNotesModuleShowAllNotesModuleInitializer.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

import UIKit

class ShowAllNotesModuleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var showallnotesmoduleViewController: ShowAllNotesModuleViewController!

    override func awakeFromNib() {

        let configurator = ShowAllNotesModuleModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: showallnotesmoduleViewController)
    }

}
