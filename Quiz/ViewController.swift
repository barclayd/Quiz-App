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
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        let userAnswer : Bool = answerOptions[sender.tag-1]
        checkAnswer(selectedAnswer: userAnswer)
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber+1)/\(allQuestions.questionList.count)"
    }
    

    func nextQuestion() {
        
        if questionNumber+1 < allQuestions.questionList.count {
            currentQuestion = allQuestions.questionList[questionNumber]
            questionLabel.text = currentQuestion.questionText
        } else {
            
            let alert = UIAlertController(title: "Great Job!", message: "Congratulations, you've made it to the end of the quiz with a score of \(score).", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart Quiz", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer(selectedAnswer: Bool) {
       
        if selectedAnswer == currentQuestion.answer {
            score += 1
        }
        
        questionNumber += 1
        nextQuestion()
        updateUI()
    }
    
    
    func startOver() {
       questionNumber = 0
        score = 0
        updateUI()
        nextQuestion()
    }
    

    
}
