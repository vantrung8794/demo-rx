//
//  ViewController.swift
//  DemoTraining
//
//  Created by TrungNV on 6/10/20.
//  Copyright © 2020 TTC Solutions VietNam. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {


    @IBOutlet weak var lblContent: UILabel!
    let vm = MainVM()
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        bindingData()
    }

    func initData() {
        vm.initListNotes()
    }

    func bindingData() {
        vm.listNotes.subscribe(onNext: { list in
            var contentText = ""
            list.forEach { (item) in
                contentText += "\n\(item)"
            }
            self.lblContent.text = contentText
            }).disposed(by: disposeBag)
    }
    
    @IBAction func addAction(_ sender: Any) {
        let addVC = AddVC()
        addVC.didSubmit = { newNote in
            if newNote.isEmpty {
                return
            }
            self.vm.addNewNote(newNote)
        }
        self.present(addVC, animated: true, completion: nil)
    }

}

