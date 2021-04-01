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
    
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    }
}
