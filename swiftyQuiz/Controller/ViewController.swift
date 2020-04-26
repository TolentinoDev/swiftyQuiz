//
//  ViewController.swift
//  swiftyQuiz
//
//  Created by Ryan Tolentino on 4/21/20.
//  Copyright © 2020 Ryan Tolentino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        let userGotRight = quizBrain.checkAnswer(userAnswer)
        //let actualAnswer = quiz[questionNumber].answer
        if userGotRight == true {
            sender.backgroundColor = UIColor.green
            //rightAnswers + 1
        }
        else{
            sender.backgroundColor = UIColor.red
            
            
        }
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = " Score: " + String(quizBrain.getScore())
        
        trueButton.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.3098039216, blue: 0.4196078431, alpha: 1)
        falseButton.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.3098039216, blue: 0.4196078431, alpha: 1)
        
    
    
    
}

}
