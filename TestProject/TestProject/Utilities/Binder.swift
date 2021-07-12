//
//  NewFile.swift
//  TestProject
//
//  Created by M_934098 on 7/9/21.
//

import Foundation

class Binder<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
 
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
