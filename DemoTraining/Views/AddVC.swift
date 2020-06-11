//
//  AddVC.swift
//  DemoTraining
//
//  Created by TrungNV on 6/10/20.
//  Copyright © 2020 TTC Solutions VietNam. All rights reserved.
//

import UIKit

class AddVC: UIViewController {

    @IBOutlet weak var tfInput: UITextField!

    var didSubmit: ((_ note: String) -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submitAction(_ sender: Any) {
        self.dismiss(animated: true) {
            if let submit = self.didSubmit {
                submit(self.tfInput.text!)
            }
        }
    }
}
