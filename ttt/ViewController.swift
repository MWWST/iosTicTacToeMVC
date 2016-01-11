//
//  ViewController.swift
//  ttt
//
//  Created by Michael Weitzman on 1/8/16.
//  Copyright © 2016 World Source Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var TTT = TicTacToe()
    
    @IBOutlet weak var andTheWinnerIsLabel: UILabel!
    // possible 3 in a rows
    
    @IBOutlet weak var button0: UIButton!
    // 0 1 2
    @IBOutlet weak var button1: UIButton!
    // 0 3 6
    @IBOutlet weak var button2: UIButton!
    // 3 4 5
    @IBOutlet weak var button3: UIButton!
    // 6 7 8
    @IBOutlet weak var button4: UIButton!
    // 1 4 7
    @IBOutlet weak var button5: UIButton!
    // 2 7 8
    @IBOutlet weak var button6: UIButton!
    // 0 4 8
    @IBOutlet weak var button7: UIButton!
    // 2 4 6
    @IBOutlet weak var button8: UIButton!
    
    
    @IBAction func squarePressed(sender: UIButton) {
       
    
        
        if TTT.player == 1 && TTT.board[sender.tag] == 0 {
            
            
            sender.backgroundColor = UIColor.blueColor()
            TTT.board[sender.tag] = 1
            //check the color combos
            TTT.player = 2
            
            TTT.checkResults()
            
            if TTT.winner == 1 {
                andTheWinnerIsLabel.text = "And the winner is Red"
                 andTheWinnerIsLabel.hidden = false
            }
            
            else if TTT.winner == 2 {
                andTheWinnerIsLabel.text = "And the winner is Blue"
                 andTheWinnerIsLabel.hidden = false
                
            }
            
        } else if TTT.player == 2 && TTT.board[sender.tag] == 0 {
         
            sender.backgroundColor = UIColor.redColor()
            TTT.board[sender.tag] = 2
            TTT.player = 1
            TTT.checkResults()
       
            if TTT.winner == 1 {
                andTheWinnerIsLabel.text = "And the winner is Red"
                andTheWinnerIsLabel.hidden = false
            }
                
            else if TTT.winner == 2 {
                
                andTheWinnerIsLabel.text = "And the winner is Blue"
                andTheWinnerIsLabel.hidden = false
                
            }
            
            
        }
    
        
    }
    
    @IBAction func resetButtonClicked(sender: UIButton) {
        TTT.resetBoard()
        andTheWinnerIsLabel.hidden = true
        button1.backgroundColor = UIColor.grayColor()
        button2.backgroundColor = UIColor.grayColor()
        button3.backgroundColor = UIColor.grayColor()
        button4.backgroundColor = UIColor.grayColor()
        button5.backgroundColor = UIColor.grayColor()
        button6.backgroundColor = UIColor.grayColor()
        button7.backgroundColor = UIColor.grayColor()
        button8.backgroundColor = UIColor.grayColor()
        button0.backgroundColor = UIColor.grayColor()
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        andTheWinnerIsLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

