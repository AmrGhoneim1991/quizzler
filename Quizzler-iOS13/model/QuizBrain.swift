//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by amr ahmed abdel hamied on 2/1/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    let quiz = [Question(q: "a slug's blood is green", a: "True") ,
                Question (q: "one quarter of human bone are in the feet" , a: "True") ,
                Question (q: "you can lead a cow down stairs but not up stairs", a: "False") ,
                Question (q: "no piece of square dry paper can be floded more than 7 times", a: "False")
    ]
    
    mutating func chekAnswer (userAnswer : String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else {
            return false
        }
    }
    
    func getQuestionLabel () -> String {
        return quiz[questionNumber].text
        
    }
    
    func getProgress () -> Float {
       let progress = Float(questionNumber+1) / Float(quiz.count)
        return progress
    }
    
    mutating func getNextQuestion () {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore () -> Int {
        return score
    }
    
    
    
}
