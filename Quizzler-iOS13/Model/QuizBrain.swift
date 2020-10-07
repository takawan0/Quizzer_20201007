//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Tamami Kawano on 2020/09/10.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    // we do not need to initialize this struct because we've given figures in the struct.
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "1. Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "2. The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "3. In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "4. In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "5. It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "6. You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "7. Google was originally called 'Backrub'.", a: "True"),
        Question(q: "8. Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "9. The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "10. No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "11. Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    
    var score = 0
    
    //method
    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
            
        }
    }
    
    
    func getScore() -> Int {
        return score
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    
    
    mutating func nextQuestion () {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}

