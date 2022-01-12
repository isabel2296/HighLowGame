//
//  ViewController.swift
//  game-tutorial
//
//  Created by Isabel Silva on 1/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highButton: UIButton!
    @IBOutlet weak var lowButton: UIButton!
    @IBOutlet weak var cardImageView: UIImageView!
    var score = 0
    var currentCardValue = 0
    var prevCardValue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }
    func randomizedCard(){
        // make the previous card value equal to current value
        prevCardValue = currentCardValue
        // Create a variable that will hold a random card value
        currentCardValue = Int.random(in: 1...13)
        
        // Update cardImage with our generated random card value
        cardImageView.image = UIImage(named: String(currentCardValue))
    }
    func increaseScore(){
        // add a point to the score
        score = score+1
        // update score label
        scoreLabel.text = "Score: " + String(score)
    }
    func gameOver(){
        // update score label to say game over
        scoreLabel.text = "Game Over!!"
        // update score to 0
        score = 0
    }
    @IBAction func highButtonPressed(_ sender: Any) {
        randomizedCard()
        // increment score if current card is greater than or equal to previous card value else game over
        if currentCardValue >= prevCardValue{
            increaseScore()
        }else{
            gameOver()
        }
    }
    
    @IBAction func lowButtonPressed(_ sender: Any) {
        randomizedCard()
        // increment score if current card is less than previous card value else game over
        if currentCardValue < prevCardValue{
            increaseScore()
        }else{
            gameOver()
        }
    }
}

