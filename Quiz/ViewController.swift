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
    var currentQuestion : Question!
    var questionNumber: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        let userAnswer : Bool = answerOptions[sender.tag-1]
        checkAnswer(selectedAnswer: userAnswer)
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if questionNumber <= allQuestions.questionList.count-1 {
            currentQuestion = allQuestions.questionList[questionNumber]
            questionLabel.text = currentQuestion.questionText
        } else {
            print("Congratulations, you've made it to the end of the quiz.")
        }
    }
    
    
    func checkAnswer(selectedAnswer: Bool) {
       
        if selectedAnswer == currentQuestion.answer {
            print("Correct!")
        } else {
            print("Incorrect!")
        }
        questionNumber += 1
        nextQuestion()
    }
    
    
    func startOver() {
       
    }
    

    
}
