//
//  MainVM.swift
//  DemoTraining
//
//  Created by TrungNV on 6/10/20.
//  Copyright © 2020 TTC Solutions VietNam. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class MainVM {
    var listNotes = BehaviorRelay<[String]>(value: [])

    func numberOfListNotes() ->  Int {
        return listNotes.value.count
    }

    func getItem(atIndex index: Int) -> String{
        return listNotes.value[index]
    }

    func initListNotes() {
        let temp = ["note 1", "note 2"]
        listNotes.accept(temp)
    }

    func addNewNote(_ note: String) {
        var temp = listNotes.value
        temp.append(note)
        listNotes.accept(temp)
    }
}
