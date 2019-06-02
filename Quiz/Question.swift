//
//  Question.swift
//  Quiz
//
//  Created by Daniel Barclay on 01/06/2019.
//  Copyright © 2019 Daniel. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
