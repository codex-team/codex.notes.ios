//
//  UITableViewCell+UINib.swift
//  Notes
//
//  Created by Egor Petrov on 18/01/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import UIKit.UITableViewCell

extension UITableViewCell {
  static var identifier: String {
    return String(describing: self)
  }

  static var nib: UINib? {
    return UINib(nibName: identifier, bundle: nil)
  }
}
