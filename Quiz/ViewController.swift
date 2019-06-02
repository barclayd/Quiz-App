//
//  ViewController.swift
//  Quizzler
//
//  Created by Daniel Barclay on 1/6/2019.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions : QuestionBank = QuestionBank()
    let answerOptions : Array = [true, false]
    var correctAnswer : Bool!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQuestion = allQuestions.questionList[0]
        questionLabel.text = firstQuestion.questionText
        correctAnswer = firstQuestion.answer
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        let userAnswer : Bool = answerOptions[sender.tag-1]
        checkAnswer(selectedAnswer: userAnswer)
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer(selectedAnswer: Bool) {
       
        if selectedAnswer == correctAnswer {
            print("Correct!")
        } else {
            print("Incorrect!")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
