//
//  Question.swift
//  swiftyQuiz
//
//  Created by Ryan Tolentino on 4/22/20.
//  Copyright © 2020 Ryan Tolentino. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(q:String,a:String) {
        text = q
        answer = a
    }
    
}
