//
//  QuestionBank.swift
//  Quiz
//
//  Created by Daniel Barclay on 01/06/2019.
//  Copyright © 2019 Daniel Barclay. All rights reserved.
//

import Foundation

class QuestionBank {
    var questionList : Array = [Question]()
    
    init(){
        questionList.append(Question(text: "Spurs won the Champions League in 2018/19", correctAnswer: false))
        questionList.append(Question(text: "Ryan Giggs was born in Cardiff", correctAnswer: true))
        questionList.append(Question(text: "Liverpool won the Premier League in 2018/19", correctAnswer: false))
        questionList.append(Question(text: "Wayne Rooney is England's all time leading goal scorer.", correctAnswer: true))
        questionList.append(Question(text: "Manchester United have won 20 English First Division Titles", correctAnswer: true))
        questionList.append(Question(text: "Pele is the youngest World Cup winner", correctAnswer: true))
        questionList.append(Question(text: "Mario Balotelli has been cautioned (booked) more times than he has scored", correctAnswer: false))
        questionList.append(Question(text: "The Premier League began in 1888", correctAnswer: false))
        questionList.append(Question(text: "Alan Shearer is the all time Premier League Leading Scorer", correctAnswer: true))
        questionList.append(Question(text: "Steven Gerrard has made more Premier League appearances than Frank Lampard", correctAnswer: false))
        questionList.append(Question(text: "Arsenal's 'Invincibles' went unbeaten for over 50 Premier League matches", correctAnswer: false))
        questionList.append(Question(text: "Eric Cantona scored the first ever Premier League hat trick", correctAnswer: true))
        questionList.append(Question(text: "Kevin Phillips was the first Premier League player to win the European Golden Shoe award.", correctAnswer: true))
    }
    
}
