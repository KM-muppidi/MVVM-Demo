//
//  HomeViewModel.swift
//  TestProject
//
//  Created by M_934098 on 7/12/21.
//

import Foundation

class HomeViewModel: NSObject {
    
    var homeLabelText = Binder("")
    
    func userTappedLanguageChangeButton() {
        homeLabelText.value = "Bonjour èquipe"
    }
}
