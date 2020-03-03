//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   let allQuestions = QuestionBank()
   var pickedAnswer: Bool = false
   var questionNumber: Int = 0
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = allQuestions.list[0].questionText
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if(sender.tag==1){
            pickedAnswer = true}
        
        else if (sender.tag==0){
            pickedAnswer = false}
        
        checkAnswer()
        
        questionNumber += 1
        
        if(questionNumber < 8){
            nextQuestion() }
        
        else {
            let alert = UIAlertController(title: "Awesome", message: "You finished all the questions, would you like to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "restart", style: .default, handler: { (UIAlertAction) in startOver()},
                
                                              alert.addAction(restartAction),
                
                present(alert, animated: true, completion: nil)
            }
        }
    }

        
        
        
        

  
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        questionLabel.text = allQuestions.list[questionNumber].questionText

    }
    
    
    func checkAnswer() {
        
        let correctAnswer=allQuestions.list[questionNumber].answer
        
        if (correctAnswer == true){
            print("your are correct")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
       
    }
    

    
}
