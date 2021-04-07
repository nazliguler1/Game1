//
//  SecondViewController.swift
//  TicTacToe
//
//  Created by Nazlı Güler on 1.04.2021.
//  Copyright © 2021 Nazlı Güler. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var activePlayer = 1 //Cat Photo 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]] // list of winning combinations
    
    var gameIsActive = true
     
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var Button: UIButton! // Play Again button
    
    @IBAction func PlayAgain(_ sender: AnyObject) { // Play Again function
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameIsActive = true
        activePlayer = 1
               
        Button.isHidden = true
        label.isHidden = true
               
        for i in 1...9
            {
                let button1 = view.viewWithTag(i) as! UIButton
                button1.setImage(nil, for: UIControl.State())
            }
    }
    
    @IBAction func action(_ sender: Any) {
        if (gameState[(sender as AnyObject).tag-1] == 0)
        {
            gameState[(sender as AnyObject).tag-1] = activePlayer
            if (activePlayer == 1)
            {
                (sender as AnyObject).setImage(UIImage(named: "Catphoto1.jpg"), for: UIControl.State())
                activePlayer = 2
            }
            else
            {
                (sender as AnyObject).setImage(UIImage(named: "Catphoto2.jpg"), for: UIControl.State())
                activePlayer = 1
            }
        
    }
        
    for combination in winningCombinations
       {
           if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
           {
               gameIsActive = false
               
               if gameState[combination[0]] == 1
               {
                   label.text = "PLAYER 1 HAS WON!"
               }
               else
               {
                   label.text = "PLAYER 2 HAS WON!"
               }
               
               Button.isHidden = false
               label.isHidden = false
           }
       }
        
       gameIsActive = false
              
              for i in gameState
              {
                  if i == 0
                  {
                      gameIsActive = true
                      break
                  }
              }
              
              if gameIsActive == false
              {
                  label.text = "IT WAS A DRAW!"
                  label.isHidden = false
                  Button.isHidden = false
              }
          }
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}
