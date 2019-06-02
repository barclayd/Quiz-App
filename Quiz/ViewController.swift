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
    var displayMessage: Array = [String]()
    
    // identify screen width to calculate progress bar increments
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        let userAnswer : Bool = answerOptions[sender.tag-1]
        checkAnswer(selectedAnswer: userAnswer)
        questionNumber += 1
        updateUI()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        if questionNumber+1 <= allQuestions.questionList.count {
        progressLabel.text = "\(questionNumber+1)/\(allQuestions.questionList.count)"
            
        progressBar.frame.size.width = CGFloat((screenWidth/CGFloat(allQuestions.questionList.count)) * CGFloat(questionNumber+1))
        }
        
        nextQuestion()
    }
    

    func nextQuestion() {
        
        if questionNumber+1 <= allQuestions.questionList.count {
            currentQuestion = allQuestions.questionList[questionNumber]
            questionLabel.text = currentQuestion.questionText
        } else {
            
            let scorePercentage = (score * 200 + allQuestions.questionList.count)/(2 * allQuestions.questionList.count)
            
            
            if scorePercentage > 80 {
                setMessage(title: "Knocked it out of the park! 💯", message: "Awesome! What a showing that was... you really know your stuff 🤓 You finished with a score of \(score): \(scorePercentage)%")
            } else if scorePercentage > 50 {
                setMessage(title: "Not too shabby! 😏", message: "Nice one champ, keep learning to reach the top! You finished with a score of \(score): \(scorePercentage)%")
            } else {
                setMessage(title: "Poor show 😪", message: "Unlucky, better luck next time! 💪🏼 You finished with a score of \(score): \(scorePercentage)%")
            }
            
            let alert = UIAlertController(title: displayMessage[0], message: displayMessage[1], preferredStyle: .alert)
            
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
            ProgressHUD.showSuccess("Correct!")
        } else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
       questionNumber = 0
        score = 0
        updateUI()
    }
    
    func setMessage(title: String, message: String) {
        displayMessage = [title, message]
    }
    

    
}
